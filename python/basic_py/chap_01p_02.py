
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
