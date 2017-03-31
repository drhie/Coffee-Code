#This file exists to play with code and the contents can be deleted.
from IPython import embed

def test(arg):
    if arg == 5:
        print "This is five!"
    elif arg > 5:
        print "This is bigger than five!"
    else:
        embed()
        print "This is smaller than five."

print test(4)
