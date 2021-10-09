clc
clear all

f = @(x) x.^2.*sin(x);
x = linspace(-pi, pi, 100);
fX = f(x);
plot(x, fX, 'black'), hold on

x = linspace(-pi, pi, 4);
fX = f(x);
scatter(x, fX, 'black')

p = NANSLib.lagrangeInterp(x, fX)

x = linspace(min(x), max(x), 100);
pX = polyval(p, x);
plot(x, pX, 'red'), hold off