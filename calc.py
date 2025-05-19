import math

def basic_calculator():
    try:
        num1 = float(input("Enter first number: "))
        op = input("Enter operator (+, -, *, /): ")
        num2 = float(input("Enter second number: "))

        if op == "+":
            result = num1 + num2
        elif op == "-":
            result = num1 - num2
        elif op == "*":
            result = num1 * num2
        elif op == "/":
            result = num1 / num2 if num2 != 0 else "Error: Division by zero"
        else:
            result = "Invalid operator"

        print("Result:", result)
    except ValueError:
        print("Invalid input")

def scientific_calculator():
    print("Scientific functions: sin, cos, tan, log, sqrt, exp, pow")
    func = input("Enter scientific function: ").lower()

    try:
        if func in ["sin", "cos", "tan", "log", "sqrt", "exp"]:
            num = float(input("Enter number: "))
            result = getattr(math, func)(num)
            print(f"{func}({num}) = {result}")
        elif func == "pow":
            base = float(input("Enter base: "))
            exponent = float(input("Enter exponent: "))
            print(f"{base}^{exponent} = {math.pow(base, exponent)}")
        else:
            print("Invalid function")
    except ValueError:
        print("Invalid input")

def main():
    print("Welcome to the Python Calculator")
    print("1. Basic Calculator")
    print("2. Scientific Calculator")

    choice = input("Choose an option (1 or 2): ")
    
    if choice == "1":
        basic_calculator()
    elif choice == "2":
        scientific_calculator()
    else:
        print("Invalid choice")

main()
