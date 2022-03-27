% Skript som estimerar l�ysinga av eit startverdiproblem
% av f�rste orden ved hjelp av Eulers metode.
% Input er F(x,y), der y'=F(x,y), startkravet y(x_0)=y_0,
% xF, den siste x-verdien og N - talet p� punkt.
% Alle parametrane er hardkoda bortsett fr� N, som blir lest
% inn fr� kommandovindauga.

% Gir differensiallikninga
F=@(x,y) sqrt(x)*sin(y) + x;

% Startkrav
x0=0; 
y0=2;

% Slutt
xF=5;

% Talet p� steg
N=input('Gi talet p� steg: ');
h=(xF-x0)/N;                    % Steglengda

% Initerar
x=x0; y=y0;
xVektor=x0:h:xF;
yVektor(1)=y;

% Eulers metode
for n=1:N
  y=y+F(x,y)*h;             % Oppdaterar y
  x=x+h;                    % Oppdaterar x
  yVektor(n+1)=y;
end

% Plottar resultatet
plot(xVektor, yVektor)