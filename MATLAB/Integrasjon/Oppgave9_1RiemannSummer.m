%Oppgave 9.1
format compact
%Funksjonen
f = @(x) x^3; 

%Start-og-sluttgrense
a=1; b=3; 

%Antall del-intervall / oppdelinger
n = input('Antall del-intervall: '); 

%Bredden = deltax 
dx = (b-a)/n; 

Hoyresum = 0;
Venstresum = 0;


%Dette er høyreseleksjon, altså den minker seg nærmere det eksaktet
for i=1:n
     xi = a + i*dx;                   %Oppdaterer x
    Hoyresum = Hoyresum + f(xi)*dx;   %Oppdaterer summen
            
end 

%Dette er venstreselekson -> øker seg nærmere det eksaktet
for i=0:(n-1)
    xi = a + i*dx;
    Venstresum = Venstresum + f(xi)*dx;
end

Hoyresum
Venstresum

T = (Hoyresum + Venstresum)/2  %Trapessummen