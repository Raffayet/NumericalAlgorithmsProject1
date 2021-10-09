clear all;
clc;

%a)

A = [5 4 6; 3 2 3; 8 8 9];

r = func1A(A)

%b)
%S obzirom da ovaj zadatak lici na igru sudoku, mozemo zakljuciti da ako
%su u svakom redu i svakoj koloni brojevi razliciti i pripadaju skupu 
%{1, 2, 3, 4, 5, 6, 7, 8, 9}, ne moramo proveravati da li su i u 3x3 
%podmatricama razliciti brojevi i sadrze sve brojeve iz ovog skupa

B = [4 2 7 3 1 9 5 8 6;
    9 1 5 7 8 6 3 2 4;
    6 8 3 4 5 2 1 7 9;
    8 7 1 5 4 3 9 6 2;
    3 4 9 6 2 7 8 1 5;
    2 5 6 1 9 8 4 3 7;
    1 3 2 9 7 4 6 5 8;
    7 6 4 8 3 5 2 9 1;
    5 9 8 2 6 1 7 4 3];

r = func1B(B)