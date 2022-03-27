% Skript som forsøker å løyse ei 
% likning ved fikspunkt-iterasjon.
% Input er x0, f(x), der likninga er
% formulert som x=f(x), og Nit - 
% det maksimale talet på iterasjonar.

% Start-gjetning
x0=7;
% Funksjon
f=@(x) 3+log(x^2+1);

% Talet på iterasjonar
Nit=10;

% Initerar x
x=x0;

% Sjølve iterasjonen
for n=1:Nit
  x=f(x);       % Iterasjonsskjema
  disp([n x])   % Skriver svar til skjerm
  pause
end