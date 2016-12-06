__author__ = 'edofreriks'

import string
import random
import subprocess

def id_generator(size=10, chars=string.ascii_letters + string.digits):
    return ''.join(random.choice(chars) for _ in range(size))

def write_to_clipboard(output):
    process = subprocess.Popen(
        'pbcopy', env={'LANG': 'en_US.UTF-8'}, stdin=subprocess.PIPE)
    process.communicate(output.encode('utf-8'))

def read_from_clipboard():
    return subprocess.check_output(
        'pbpaste', env={'LANG': 'en_US.UTF-8'}).decode('utf-8')

def main():
    rand_string = id_generator()
    write_to_clipboard(rand_string) # Write it to the clipboard
    print(rand_string+' copied to clipboard')

if __name__ == "__main__":
    main()