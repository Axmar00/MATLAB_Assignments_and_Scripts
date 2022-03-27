% Skript som estimerar ei grense.
% Uttrykket vi skal ta grensa av, f, og verdien x skal 
% g� mot, a, er hardkoda i starten av skriptet.
% Skriptet plottar f(a+h) for h-verdiar stadig n�rare
% null. Den plottar estimatet for b�de negative og positive 
% verdiar av h.

% Verdien x skal g� mot
a=pi/3;
% Funksjonsuttrykk
f=@(x) (cos(x)-0.5)/(x-pi/3);

h=1;
% L�kke der h blir halvert for kvar iterasjon
for n=1:15
  x=a+h;                            % Oppdaterar x
  Hvektor(n)=h;                     % Lagar vektor med h-verdiar
  GrenseVektorPluss(n)=f(x);        % N�r x g�r mot a ovanfr�
  x=a-h;                            % Oppdaterar x
  GrenseVektorMinus(n)=f(x);        % N�r x g�r mot a nedanfr�
  h=h/2;                            % Halverar h
end

% Plottar estimat
semilogx(Hvektor,GrenseVektorPluss,'bx-')
hold on
semilogx(Hvektor,GrenseVektorMinus,'rx-')
hold off
grid on                             % Rutenett
% Tekstboks med forklaring og tekst p� aksar
xlabel('h')
ylabel('f(a\pm h)')
legend('x \rightarrow a^+','x \rightarrow a^-')