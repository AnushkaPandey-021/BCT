a = int(input("Enter a number: "))
x = 0
y = 1
temp = 0
fib=[]
for i in range(a):
    fib.append(x)
    temp = x + y
    x = y
    y = temp

print("Fibonacci No.:",fib)
