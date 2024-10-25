def is_kaprekar(n):
    """Check if a number is a Kaprekar number"""
    square = str(n ** 2)
    half = len(square) // 2
    left, right = square[:half], square[half:]
    return int(left) + int(right) == n

def print_color(kaprekar):
    """Print a color value based on whether the number is Kaprekar or not"""
    if kaprekar:
        print("Green")  # or any other color you prefer
    else:
        print("Red")  # or any other color you prefer

# Example usage:
num = int(input("Enter a number: "))
if is_kaprekar(num):
    print(f"{num} is a Kaprekar number")
    print_color(True)
else:
    print(f"{num} is not a Kaprekar number")
    print_color(False)
