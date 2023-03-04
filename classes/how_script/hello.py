print('hello')

# but even cooler
myname = 'hunter'
print(f'hello from {myname}')

# even fancier
def name_printer(name):

    if type(name) == str:
        print(f'hello my name is {name}')
    elif type(name) == int:
        print(f'beep boop I am robot, my serial number is {name}') 
    else:
        raise AssertionError('Strings or Integers only')

name_printer('hunter')
name_printer(22)
#name_printer(1.1)
