%Oppgave f og h
%Originale funksjonen
f = @(x) sin(x.^2);

h = 10.^[0:-1:-17];  %[.2 .1 .05 .01 .005 .001 .0005 .0001]; i oppgave f
a=1; %a-verdien

%Deriverte funksjonen
Deriverte=2*cos(a);   

FramFormel = abs(((f(1+h) - f(1))./h)- Deriverte);
BakFormel = abs(((f(1) - f(1-h))./h)- Deriverte);
Midtpunktformel = abs(((f(1+h) - f(1-h))./(2*h)) - Deriverte);

loglog(h,FramFormel,'b-','linewidth',2)
hold on
grid on
loglog(h,BakFormel,'g--','linewidth',2)
loglog(h,Midtpunktformel,'m-.','linewidth',2)