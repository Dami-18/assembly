## Build and Run

First we "assemble" the program using the `nasm` assembler. This is simpler
than compiling because each line of assembly code translates almost directly
to bytes of machine code. To assemble, from the project's root directory
(not from the directory where the code is), type:

    $ nasm -f elf64 assembly/first_prog/first.asm -o bin/first.o

This will generate the object file `first.o` in the `bin` directory (under
the project's root). The object file needs to be linked before we can 
execute it:

    $ ld bin/first.o -o bin/first

Now we created an executable file `first` in the `bin` directory. We can
now execute our program, from the root directory, with:

    $ bin/first

## Check the result

The program should return `0` which means `success`. But since this is not
*printed*, we need to use the following command, that checks the return
value of the last executed program:

    $ echo $?
    0

You should see `0` in your terminal.

Try also the `exit256.asm` that uses another exit code. It turns out that
the exit codes are represented with 1 byte (unsigned), in this case ranging 
from 0-255.
