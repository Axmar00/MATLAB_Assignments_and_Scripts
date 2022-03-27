% Skript som løyser likninga f(x) = 0
% ved halveringsmetoden. 
% Input er a og b - grensene for intervallet
% vi tar utgongspunkt i. Ein må sjølv kontrollere
% at funksjonen f er kontinuerleg på [a, b] og
% funksjonen skifter forteikn på dette
% intervallet.
% I tillegg til a, b og funksjonsuttrykket, 
% er presisjonen på løysinga hard-koda i
% starten av skriptet.

% Set start-intervall
a=3; b=5;
% Funksjonen som skal vere null
funk=@(x) sin(x)^2-1+2*cos(x);
% Bestemmer presisjonen
p=1e-4;

% Funksjonsverdiar i endepunkta
fa=funk(a);
fb=funk(b);

% Itererar
while abs(b-a)>2*p;
  c=(b+a)/2;            % Midtpunkt
  fc=funk(c);           % Ny funksjonsverdi
  if fa*fc<0
    b=c;
  else
    a=c;
  end
end

% Skriv svaret til skjerm (mange desimalar)
format long
x=(b+a)/2
format short