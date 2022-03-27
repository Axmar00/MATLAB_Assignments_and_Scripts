% Estimerer integral ved Simpsons metode


% Funksjon
f = @(x) x^3 + 2*x^2 + 4*x - 2;

% Grenser
a=3;
b=-1;

% Oppdeling
n=input('Kor mange del-intervall skal vi ha? ');
dx=(b-a)/n;            % Bredda på hvert delintervall

% Initerar summen S
S = (dx/3)*(f(a)+f(b));


%Summerer oddetallsbidraget
for i=1:2:(n-1) 
  x = a + i*dx;  
  S = S + 4*f(x)*(dx/3);                      % Oppdaterer S                           
end

%Summerer partallsbidraget
for i=2:2:(n-2) 
  x = a + i*dx;  
  S = S + 2*f(x)*(dx/3);                      % Oppdaterer S                           
end

% Skriv svaret til skjerm
S
