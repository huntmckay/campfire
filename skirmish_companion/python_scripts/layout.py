my_list = []

def makefile(filename):
    with open(filename, "w+") as f:
        f.write(f'# {filename} \n')
        f.write(f'# TODO - Write Documentation \n')
        f.write('# TODO - Write code \n')

with open("linux_kicker.md") as f:
    for line in f:
        a = line.rstrip('\n').split(' ')
        filename = f"{'_'.join(a).lower()}.ps1"
        # print(filename)
        makefile(filename)
