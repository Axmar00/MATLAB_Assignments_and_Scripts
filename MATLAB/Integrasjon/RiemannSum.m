% Estimere integral med Riemansummer. Bruker alle seleksjoner +
% trapesmetode


% Funksjon
f = @(x) cos(x^2);

% Grenser
a=0;
b=pi;

% Oppdeling
n=input('Kor mange del-intervall skal vi ha? ');
dx=(b-a)/n;         % Breidda på kvart delintervall

% Initerar argumentet x, x2 og summen R
x = a;                %For venstreseleksjon
x2 = a + dx;          %For høyreseleksjon
x3 = (a + dx)/2;      %For midtpunktseleksjon
RVenstre = 0;
RHoyre = 0;
RMidt = 0;


for i=1:n 
  %Venstreselekson
  RVenstre = RVenstre + f(x)*dx;        % Oppdaterer R
  x = x + dx;                           % Oppdaterer x
  
  %Høyreseleksjon
  RHoyre = RHoyre + f(x2)*dx;           % Oppdaterer R
  x2 = x2 + dx;                         % Oppdaterer x
  
  %Midtpunktseleksjon
   RMidt = RMidt + f(x3)*dx;           % Oppdaterer R
   x3 = x3 + dx;                       % Oppdaterer x
end

% Skriv svaret til skjerm
RVenstre
RHoyre
RMidt
%Trapesmetode = (RVenstre+RHoyre)/2  %Trapesmetoden
