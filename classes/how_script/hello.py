# hello.py
print('hello')

# but even cooler
myname = 'hunter'
print(f'hello from {myname}')

# even fancier
def name_printer(myname):

    if type(myname) == str:
        print(f'hello my name is {myname}')
    elif type(myname) == int:
        print(f'beep boop I am robot, my serial number is {myname}') 
    else:
        print(f"name input '{myname}' is date type'{type(myname)}'\n")
        raise AssertionError(f"Input for name can only be a string or integer")

name_printer('hunter')
name_printer(12341234)
name_printer(1.1)
