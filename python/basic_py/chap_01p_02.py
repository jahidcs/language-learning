
a = input("Taking input: ")
b = input("Enter a number: ") # this case the input will string

print(type(a))
print(type(b))

c = int(input("Give Number: "))
print(type(c))

d = float(input("Enter Number: "))
print(type(d))

print(a, b, c, d, sep=' - ', end='\n')

'''
Full Syntax of print()
print(*objects, sep='', end='\n', file=sys.stdout, flush=False)
parameters:
    - *objects (multiple object)
    - sep (Separator)
    - end (End value)
    - file (get file objects)
    - flush (True/False)
'''

# Python Operators
"""
Python Operators
    - Arithmatic Operators (+, -, *, /, //, %)
    - Relational Operators (>, <, ==, !=, >=, <=)
    - Logical Operators (and, or, not)
    - Bit-wise Operator
        - & Bitwise AND
        - | Bitwise OR
        - ~ Bitwise NOT
        - ^ Bitwise XOR
        - >> Bitwise Right shift
        - << Bitwise Left Shift
    - In place Operators (=, +=, -=, *=, /=, %=, //=, **=, &=, ^=, >>=, <<=, |=)
    - Identity Operators
    - Membership Operators
"""

print("Arithmatic Operators")
a, b = 1, 2

print(a + b)
print(a - b)
print(a * b)
print(a / b)
print(a // b)
print(a % b)

print("Relational Operator")