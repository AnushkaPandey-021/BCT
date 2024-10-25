x=int(input("Enter value of first number:\t"))
fact=1

while x > 0:
    fact = fact * x
    x -= 1

print("Factorial is:",fact)
