print("Variable")

a = 100 # Interger type variable declaration
b = 3.1416 # Float type variable declaration
c = "Python" # String type variable declaration
d = True # Boolean type Variable declaration

x, y, z = "String", 1, 3.1416 # multiple varible declaration at a time

CONST_TYPE_VAR = 9.8 # Constant type variable

print("""
    Varible is always changable but we can declare constant value we can declare
    For code readability er can declare this identifier as Uppercase like 'G = 9.8'
      *** we can declare with lowercase but UPPERCASE is the good practice
""")

# Identifier
print("\nIdentifier")
print(
    """
        What is Identifier in Python?
         - It's a name for variable, class, function etc
         - We can use a/A to z/Z, 0-9 and underscore(_)
         - We can not use @, $, %, #, & etc for declare identifier
         - Python is a case sensitive language(Python and python is different)
    """
)

# Naming Convention
print('\nNaming Convention')
print(
    """
    Naming convention is the rules of naming of identifier
    - For Global and local variable declaration use lowecase letter like gravity = 9.8
    - Function name will be lowercase and devide by underscore like 
        def test_func():
            pass
    - package and module name will be in lowercase like math, os, sys
    - Class name will be start with upper case letter (capitalize)
        class Car:
            pass
    - if an identifier start and end with 2 underscore that means it is a language defined special name
        example: __dict__, __future__, __all__
    - For Non public method we have to put 1 underscore
        def _protected():
            pass
    - In the case of Private method we have to put 2 underscore
        def __private():
            pass
    """
)

print("Indentation & Comment & Docstring")
print(
    '''
    Intentation - It is centain number of spaces. Generally 4 single space/ 1 tab is standart
    Comments - Necessary for code readability
    doc-string - For writing Documentation for function methods, package
    '''
)

def test_function():
    '''This is a Function documentation'''
    pass

print(test_function.__doc__)
print(help(test_function))
'''
    Help on function test_function in module __main__:

    test_function()
        This is a Function documentation
'''