% Skript som l�yser likninga f(x) = 0
% ved halveringsmetoden. 
% Input er a og b - grensene for intervallet
% vi tar utgongspunkt i. Ein m� sj�lv kontrollere
% at funksjonen f er kontinuerleg p� [a, b] og
% funksjonen skifter forteikn p� dette
% intervallet.
% I tillegg til a, b og funksjonsuttrykket, 
% er presisjonen p� l�ysinga hard-koda i
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