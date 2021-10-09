clear all;
clc;

% originalna matrica je A = [0 -1 4
%                            1  2 -1                                  
%                            2  1  1]
%S obzirom da ona nije dijagonalno dominantna, gs algoritam nece
%konvergirati. Zbog toga obrcem koeficijente uz x i z, kako bih dobio
%dijagonalno dominantnu matricu.

%zatim treba pomnoziti drugu jednacinu sa x kako bi se resili razlomka
%zatim sledi smena: t = x^3

A = [4 -1 0; -1 2 1; 1 1 2];

b = [8; 0; 6];

x0 = [0; 0; 0];

[pocetnoResenje, it] = NANSLib.gs(A, b, x0, 100, 10^-5)

t = pocetnoResenje(1);
y = pocetnoResenje(2);
z = pocetnoResenje(3);

krajnjeResenje = [t^(1/3), y, z]  %ovde sam samo vratio smenu (x = t^1/3)

