# Check if a number is prime
# is_prime(n): returns TRUE if integer n >= 2 is prime, FALSE otherwise.
is_prime <- function(n) {
	# Input validation
	if (length(n) != 1 || !is.finite(n)) stop("n must be a single finite number")
	# Non-integers are not considered prime here
	if (n != floor(n)) return(FALSE)
	n <- as.integer(n)
	if (n < 2L) return(FALSE)
	if (n %in% c(2L, 3L)) return(TRUE)
	if (n %% 2L == 0L || n %% 3L == 0L) return(FALSE)

	# Test divisors of the form 6k +/- 1 up to sqrt(n)
	limit <- floor(sqrt(n))
	i <- 5L
	while (i <= limit) {
		if (n %% i == 0L || n %% (i + 2L) == 0L) return(FALSE)
		i <- i + 6L
	}
	TRUE
}

# Vectorized helper that returns logical vector (or NA on input error)
is_prime_vec <- function(x) {
	sapply(x, function(v) {
		tryCatch(is_prime(v), error = function(e) NA)
	})
}

# Sample usage / quick tests (replaced): read numbers from user or command-line
if (interactive()) {
	# Prompt the user for input in interactive sessions
	input <- readline(prompt = "Enter numbers (comma-separated) or R expression (e.g. 1:20, c(2,3,5)): ")
	if (!nzchar(input)) stop("No input provided")
	nums <- tryCatch(
		eval(parse(text = input)),
		error = function(e) {
			# Fallback: split by commas and coerce to numeric
			as.numeric(trimws(strsplit(input, ",")[[1]]))
		}
	)
} else {
	# Non-interactive: accept command-line args
	args <- commandArgs(trailingOnly = TRUE)
	if (length(args) == 0) stop("Provide numbers as command-line arguments or run interactively")
	combined <- paste(args, collapse = " ")
	nums <- tryCatch(
		eval(parse(text = combined)),
		error = function(e) as.numeric(args)
	)
}
if (!is.numeric(nums)) stop("Failed to parse numeric input")
results <- is_prime_vec(nums)
for (i in seq_along(nums)) {
	n <- nums[i]
	res <- results[i]
	status <- if (is.na(res)) "error" else if (res) "prime" else "composite"
	cat(n, "->", status, "\n")
}

# Example: single value check
# cat("Is 17 prime?", is_prime(17), "\n")