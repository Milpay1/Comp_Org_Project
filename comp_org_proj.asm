    .data
prompt:     .asciiz "Enter a number (your number must be greater than or equal to 25): "
error_msg:  .asciiz "Illegal Number!\n"
fib_msg:    .asciiz "Fibonacci Sequence:\n"

    .text
main:
    #Ask for number
    li $v0, 4
    la $a0, prompt
    syscall

    #Reads the input from the user
    li $v0, 5
    syscall
    move $t0, $v0 #gets the number and sets it to t0

    bge $t0, 25, safe_number
    j illegal_number

illegal_number:
    li $v0, 4
    la $a0, error_msg
    syscall

    j main

safe_number:
    li $v0, 4
    la $a0, fib_msg
    syscall

    #starts the fib_sequence
    li $t0, 0
    li $t1, 1

    