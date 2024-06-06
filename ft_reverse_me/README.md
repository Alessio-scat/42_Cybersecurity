# Reverse Engineering

## launch GDB
    - gdb ./binary

## define a stop point beginning fuction main
    - break main

## launch program
    - run
    
## disassemble main
    - disassemble main


## define break point before strcmp
    - (gdb) break *0x5655623a

## Continue the program until breakpoint
    - continue

## overview
    - disassemble main

## examine registres ans store values
    - info registers

## Examine pointed content
    - x/s $ecx
    - x/s $edx

"
    - Info
        - ecx : string enter by user
        - edx : string correct
"

## having disassemble executable file in assembler language
    - objdump -d ./binary > file.asm