%Oppgave 5.2.4 a) b) 
%Funksjon
clear
f = @(x) 4*x^3 - 2*x;
f2 = @(x) 12*x^2 - 2;
h=1e-5;
x=-3;
deltax=0.1;

for i = 1:61
    y(i)= (f(x+h) - f(x))/h;
    y2(i) = f2(x);
    x=x+deltax;
    xVektor(i) = x; 
end
plot(xVektor,y, 'b','linewidth',2)
hold on
plot(xVektor,y2,'r','linewidth',2)
%c) Ser altså ingen forskjell på plottet til den deriverte og den estimerte
%deriverte

%d) 
%Testet med ulike h-verdier, når h=10^-1 blir grafene annerledes

