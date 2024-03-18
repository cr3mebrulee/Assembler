/*
VARIABLES:
%eax holds the system call number
%ebx holds the return status
*/

.section .data
.section .text
.globl _start
_start:
movl $1, %eax /*the linux kernel command number (system call) for exiting a program */
movl $0, %ebx /*set up the status number we will return to the operating system.*/

int $0x80 /*wakes up the kernel to run the exit command*/

/* this illustrates how system calls work in Linux. To execute a system call, you must load the system call number into the %eax register, and then, if necessary, pass additional parameters to other registers (for example, the status number in %ebx). 

use echo $? to print the status code value of the last completed command.*/
