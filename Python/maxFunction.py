number =input("enter a list of numbers: ")
list_num = [int(num) for num in number.split()]
largest = max(list_num)
print(largest)
