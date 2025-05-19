basic_calculator <- function() {
  cat("Basic Calculator\n")
  num1 <- as.numeric(readline("Enter first number: "))
  op <- readline("Enter operator (+, -, *, /): ")
  num2 <- as.numeric(readline("Enter second number: "))

  result <- switch(op,
                   "+" = num1 + num2,
                   "-" = num1 - num2,
                   "*" = num1 * num2,
                   "/" = ifelse(num2 != 0, num1 / num2, "Error: Division by zero"),
                   "Invalid operator")

  cat("Result:", result, "\n")
}

scientific_calculator <- function() {
  cat("Scientific functions: sin, cos, tan, log, sqrt, exp, pow\n")
  func <- tolower(readline("Enter scientific function: "))

  if (func %in% c("sin", "cos", "tan", "log", "sqrt", "exp")) {
    num <- as.numeric(readline("Enter number: "))
    result <- switch(func,
                     "sin" = sin(num),
                     "cos" = cos(num),
                     "tan" = tan(num),
                     "log" = log(num),
                     "sqrt" = sqrt(num),
                     "exp" = exp(num))
    cat(func, "(", num, ") = ", result, "\n")
  } else if (func == "pow") {
    base <- as.numeric(readline("Enter base: "))
    exponent <- as.numeric(readline("Enter exponent: "))
    cat(base, "^", exponent, "=", base^exponent, "\n")
  } else {
    cat("Invalid function name.\n")
  }
}

main <- function() {
  cat("Welcome to the R Calculator\n")
  cat("1. Basic Calculator\n")
  cat("2. Scientific Calculator\n")

  choice <- readline("Choose an option (1 or 2): ")

  if (choice == "1") {
    basic_calculator()
  } else if (choice == "2") {
    scientific_calculator()
  } else {
    cat("Invalid choice.\n")
  }
}

main()
