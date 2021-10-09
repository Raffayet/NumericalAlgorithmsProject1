clear all;
clc;

f = @(x) -1.5*x.^2.*sin(x/2).*cos(2*x);

%a)

a = -5/2*pi;
b = 4/3*pi;

x = linspace(a, b, 100);
fX = f(x);
plot(x, fX, 'blue'), hold on

%b)

order = 5;          %red predstavlja za 1 manji broj od broja tacaka

x = linspace(a, b, order + 1);    %s obzirom da je dat isti interval za  
fX = f(x);                    %zadatak pod b), iskoristio sam promenljive
                              % a i b i u ovom slucaju

p = NANSLib.lagrangeInterp(x, fX);
pX = polyval(p, x);
plot(x, pX, 'red'), hold on

%c)
a1 = -4;
b1 = 2;

scatter(x, pX, 'black')
