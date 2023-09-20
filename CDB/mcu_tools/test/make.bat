@echo off
rem Assemble program to p format
asl t_78c1x.asm

rem Convert p format to binary file
p2bin t_78c1x.p

rem Disassemble output
unidasm t_78c1x.bin -arch upd7810 > t_78c1x.lst