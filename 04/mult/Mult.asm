// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.


// 2*3=6
// 2+2+2=6 
// 3+3=6
// n1 = 2
// n2 = 3
// i = 0
// sum = 0
//Loop:
// if i > n1 goto END
// sum = sum + n2
// i = i + 1
// goto LOOP
//END:
// goto END

    @0
    D=A
    @i
    M=D

    @0
    D=A
    @sum
    M=D

(LOOP)
    @i
    D=M
    @R0
    D=D-M
    @STOP
    D;JGE // if i >= n1 goto STOP
    @R1
    D=M
    @sum
    M=M+D
    @i
    M=M+1
    @LOOP
    0;JMP
    
(STOP)
    @sum
    D=M
    @R2
    M=D

(END)
    @END
    0;JMP






