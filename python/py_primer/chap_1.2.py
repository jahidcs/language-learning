print("Objects in python\n")

for i in range(1, 21):
    for j in range(1, 11):
        print(f'{i} X {j} = {i*j}')
    print('========================\n')

x = 1

print("\nWith While loop\n")
while x is not 21:
    y = 1
    while y is not 11:
        print(f'{x} X {y} = {x*y}')
        y+=1
    x +=1
    print('========================\n')
