%Oppgave 1b
f = @(x) sqrt(x);
fd = @(x) 1/(2*sqrt(x));
fd2 = @(x) -1/(4*x^(3/2));
fd3 = @(x) 3/(8*x^(5/2));

n=1;

P1 = @(x) f(n) + fd(n)*(x-n);
P2 = @(x) P1(x) + (fd2(n)*(x-n).^2)/factorial(2);
P3 = @(x) P2(x) + (fd3(n)*(x-n).^2/factorial(3));

x=0:1e-2:6;
plot(x,f(x),'k')
hold on
grid on
plot(x,P1(x),'b')
plot(x,P2(x),'r')
plot(x,P3(x),'m')

legend('f(x)','P1(x)','P2(x)','P3(x)')
hold off