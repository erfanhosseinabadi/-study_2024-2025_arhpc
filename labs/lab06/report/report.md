---
## Front matter
title: "answer to labrotary work 6"
subtitle: "Discipline: Computer Architecture"
author: "Ерфан Хосейнабади"

## Generic otions
lang: ren-EN
toc-title: "Content"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: IBM Plex Serif
romanfont: IBM Plex Serif
sansfont: IBM Plex Sans
monofont: IBM Plex Mono
mathfont: STIX Two Math
mainfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
romanfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
sansfontoptions: Ligatures=Common,Ligatures=TeX,Scale=MatchLowercase,Scale=0.94
monofontoptions: Scale=MatchLowercase,Scale=0.94,FakeStretch=0.9
mathfontoptions:
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Fig."
tableTitle: "Table"
listingTitle: "Listing"
lofTitle: "List of illustrations"
lotTitle: "List of Tables"
lolTitle: "Listings"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Purpose of the work

The purpose of this lab is to master the arithmetic instructions
of the NASM assembly language.

# Task

1. Symbolic and numerical data in NASM
2. Performing arithmetic operations in NASM
3. Completing assignments for independent work

# Theoretical Introduction

Most assembly language instructions require operands to be processed.
The address of an operand provides the location where the data to be processed is stored. This can be data stored in a register or in a memory cell. -
Register addressing - operands are stored in registers and the names of these registers are used in the command, for example: mov ax, bx. - Direct addressing
- the operand value is specified directly in the command, for example: mov ax, 2.
- Memory addressing - the operand specifies an address in memory. The command specifies a
symbolic designation of the memory cell on whose contents the operation must be performed.
Information is entered from the keyboard and displayed on the screen in symbolic form. This information is encoded according to the ASCII character code table. ASCII is an abbreviation for American Standard Code for Information
Interchange. According to the ASCII standard, each character is encoded by one byte. There is no NASM instruction that outputs numbers (not in symbolic form). Therefore, for example, to output a number, you must first convert its digits into the ASCII codes of these digits and output these codes to the screen, not the number itself. If you output a number to the screen directly, the screen will perceive it not as a number, but as a sequence of ASCII characters - each byte of the number will be perceived as one ASCII character - and will output these characters to the screen. A similar situation occurs when entering data from the keyboard. The entered data will be characters, which will make it impossible to obtain a correct result when performing arithmetic operations on them. To solve this problem, it is necessary to convert ASCII characters to numbers and vice versa.

# Performing the lab work

## Symbolic and numerical data in NASM

I go into lab work 6, create a file there (рис. -@fig:001).

![go to lab difrectory](image/1.png){#fig:001 width=70%}

In the created file I enter the program from the listing (рис. -@fig:002).

![Saving a new program](image/2.png){#fig:002 width=70%}

I create an executable file and run it, the program output differs from what was initially expected, because the character codes together give the character j according to the ASCII table. {#fig:003 width=70%} 

![Launching the original program](image/3.png){#fig:003 width=70%}

I change the text of the original program by removing the quotes (рис. -@fig:004).

![change the program](image/4.png){#fig:004 width=70%}

This time the program returned an empty line, this is because the symbol 10 means a new line. (рис. -@fig:005).

![running the new program](image/5.png){#fig:005 width=70%}

I create a new file for the future program and write the code from the listing into it (рис. -@fig:006).

![second program](image/6.png){#fig:006 width=70%}

I create an executable file and run it, now the result 106 is displayed, the program, as the first time, added up the character codes, but output the number itself, and not its symbol, thanks to replacing the output function with iprintLF (рис. -@fig:007).

![Output of the second program](image/7.png){#fig:007 width=70%}

After removing the quotes in the program, I run it again and get the result I originally intended. (рис. -@fig:008).

![output the changed program](image/8.png){#fig:008 width=70%}

Replacing the output function with iprint gives me the same result but without the line break (рис. -@fig:009).

![Replacing the output function in the second program](image/9.png){#fig:009 width=70%}

## Performing arithmetic operations in NASM

I create a new file and copy the contents of the listing into it(рис. -@fig:010).

![third program](image/10.png){#fig:010 width=70%}

The program performs arithmetic calculations, the resulting expression and its remainder from division are output (рис. -@fig:011).

![Launching the third program](image/11.png){#fig:011 width=70%}

Replacing variables in the program for the expression f(x) = (4*6+2)/5 (рис. -@fig:012).

![change the third program](image/12.png){#fig:012 width=70%}

Running the program gives the correct result (рис. -@fig:013).

![run the modified program](image/13.png){#fig:013 width=70%}

I create a new file and place the text from the listing (рис. -@fig:014).

![Program for calculating the variant](image/14.png){#fig:014 width=70%}

After running the program and entering my student ID number, I received my version for further work. (рис. -@fig:015).

![Running the program to calculate the variant](image/15.png){#fig:015 width=70%}

## Answers to security questions

1. The following lines of code are responsible for displaying the message “Your option”:

```NASM
mov eax,rem
call sprint
```

2. The instruction mov ecx, x is used to put the address of the input string x into the ecx register mov edx, 80 - writes the length of the input string into the edx register
call sread - calls a subroutine from an external file that provides input
of a message from the keyboard.

3. call atoi is used to call a subroutine from an external file that converts the ascii code of a character into an integer and writes the result into the eax register.

4. The lines responsible for calculating the variant are:

```NASM
xor edx,edx ; reset edx for correct work div
mov ebx,20 ; ebx = 20
div ebx ; eax = eax/20, edx - remainder from division
inc edx ; edx = edx + 1
```

5. When the div ebx instruction is executed, the remainder of the division is written to the edx register.

6. The inc edx instruction increases the value of the edx register by 1.

7. The following lines are responsible for displaying the results of calculations on the screen:
```NASM
mov eax,edx
call iprintLF
```

## Assignment for independent work

In accordance with the selected option, I will implement a program for calculating the function f(x) = 10+(31x-5), checking on several variables shows the correct execution of the program (рис. -@fig:016).

![run the program](image/16.png){#fig:016 width=70%} 

I am attaching the code of my program:

```NASM
%include 'in_out.asm'
SECTION .data
msg: DB 'enter a number for х: ',0
rem: DB 'result: ',0
SECTION .bss
x: RESB 80
SECTION .text
GLOBAL _start
_start:
mov eax, msg
call sprint
mov ecx, x
mov edx, 80
call sread
mov eax, x
call atoi
mov ebx, 31
mul ebx
sub eax, 5
add eax, 10
mov edi, eax
mov eax, rem
call sprint
mov eax, edi
call iprint
```

# Conclusions

During this lab I mastered the arithmetic instructions of the NASM assembly language.

# References

1. [Пример выполнения лабораторной работы](https://github.com/evdvorkina/study_2022-2023_arh-pc/blob/master/labs/lab07/report/%D0%9B07_%D0%94%D0%B2%D0%BE%D1%80%D0%BA%D0%B8%D0%BD%D0%B0_%D0%BE%D1%82%D1%87%D0%B5%D1%82.pdf)
2. [Курс на ТУИС](https://esystem.rudn.ru/course/view.php?id=112)
3. [Лабораторная работа №6](https://esystem.rudn.ru/pluginfile.php/2089086/mod_resource/content/0/%D0%9B%D0%B0%D0%B1%D0%BE%D1%80%D0%B0%D1%82%D0%BE%D1%80%D0%BD%D0%B0%D1%8F%20%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%B0%20%E2%84%966.%20%D0%90%D1%80%D0%B8%D1%84%D0%BC%D0%B5%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B5%20%D0%BE%D0%BF%D0%B5%D1%80%D0%B0%D1%86%D0%B8%D0%B8%20%D0%B2%20NASM.pdf)
4. [Программирование на языке ассемблера NASM Столяров А. В.](https://esystem.rudn.ru/pluginfile.php/2088953/mod_resource/content/2/%D0%A1%D1%82%D0%BE%D0%BB%D1%8F%D1%80%D0%BE%D0%B2%20%D0%90.%20%D0%92.%20-%20%D0%9F%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5%20%D0%BD%D0%B0%20%D1%8F%D0%B7%D1%8B%D0%BA%D0%B5%20%D0%B0%D1%81%D1%81%D0%B5%D0%BC%D0%B1%D0%BB%D0%B5%D1%80%D0%B0%20NASM%20%D0%B4%D0%BB%D1%8F%20%D0%9E%D0%A1%20Unix.pdf)