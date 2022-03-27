% Estimerer integral ved Trapesmetoden


% Funksjon
f = @(x) sin(x^2);

% Grenser
a=-1;
b=1;

% Oppdeling
n=input('Hvor mange del-intervall skal vi ha? ');
dx=(b-a)/n;         % Breidda på kvart delintervall

% Initerar argumentet x og summen T
T = dx*(f(a)+f(b))/2;
x = a + dx;              


for i=1:(n-1) 
  T = T + f(x)*dx;                      % Oppdaterer T
  x = x + dx;                           % Oppdaterer x
end

% Skriv svaret til skjerm
T
