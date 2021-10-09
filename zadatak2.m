clear all;
clc;

f = @(x) cos(x.^2 + x + 2) + 0.4;
g = @(x) sin(x) - x;

a = -1.1;
b = 1.1;

%a)

x = linspace(a, b, 100);
fX = f(x);
plot(x, fX, 'blue'), hold on
gX = g(x);
plot(x, gX, 'green'), hold on

%b)

intersection1 = NANSLib.zeroFalsePosition(@(x) f(x) - g(x), -1, -0.5, 10^-5)
fIntersection1 = f(intersection1)
scatter(intersection1, fIntersection1, 'red'), hold on
intersection2 = NANSLib.zeroFalsePosition(@(x) f(x) - g(x), -0.5, 0.5, 10^-5)
fIntersection2 = f(intersection2)
scatter(intersection2, fIntersection2, 'red'), hold on
intersection3 = NANSLib.zeroFalsePosition(@(x) f(x) - g(x), 1, 1.5, 10^-5)
fIntersection3 = f(intersection3)
scatter(intersection3, fIntersection3, 'red'), hold on

%c)

izvod_f = @(x) -sin(x.^2 + x + 2)*(2*x + 1);

maximum = NANSLib.zeroFalsePosition(izvod_f, -1, 0, 10^-5)
fMaximum = f(maximum);
scatter(maximum, fMaximum, 'black'), hold on
minimum = NANSLib.zeroFalsePosition(izvod_f, 0, 1, 10^-5)
fMinimum = f(minimum);
scatter(minimum, fMinimum, 'black')
