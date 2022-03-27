% Skript som løyser likninga cos(x) - x = 0
% ved halveringsmetoden. Start-intervallet
% er sett til å vere [a, b] = [0, 1].
% Implementeringa utfører 17 halveringar.

% Set start-intervall
a=-3; b=-2;
%Funksjonen 
f = @(x) x^3 - 4*x + 7;
fa=f(a);
fb=f(b);

% Itererar
for n=1:30
  c=(b+a)/2;
  fc=f(c);
  if fa*fc<0
    b=c;
  else
    a=c;
  end
end

% Skriv svaret til skjerm
x=(b+a)/2