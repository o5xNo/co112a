// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

(CHECK)
    @SCREEN
    D=A

    @0
    M=D

    @KBD
    D=M

    @TOUCH_-1
    D;JGT

    @TOUCH_0
    D;JEQ

    @CHECK
    0;JMP

(TOUCH_-1) //黑
    @1
    M=-1  

    @CHANGE
    0;JMP

    
(TOUCH_0) //白
    @1
    M=0

    @CHANGE
    0;JMP


(CHANGE)
    @1
    D=M

    @0
    A=M
    M=D

    @0
    M=M+1
    D=M

    @KBD
    D=A-D

    @CHANGE
    D;JGT

    @CHECK
    0;JMP