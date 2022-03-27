% Skript som estimerar l�ysinga av eit startverdiproblem
% av f�rste orden ved hjelp av Eulers midtpunktmetode.
% Input er F(x,y), der y'=F(x,y), startkravet y(x_0)=y_0,
% xF, den siste x-verdien og N - talet p� punkt.
% Alle parametrane er hardkoda bortsett fr� N, som blir lest
% inn fr� kommandovindauga.

% Gir differensiallikninga
F=@(x,y) x - x*y;

% Startkrav
x0=0; 
y0=0;

% Slutt
xF=5;

% Talet p� steg
N=input('Gi talet p� steg: ');
h=(xF-x0)/N;                    % Steglengda

% Initerar
x=x0; y=y0;
xVektor=x0:h:xF;
yVektor(1)=y;

% Eulers midtpunktmetode
for n=1:N
  xHatt=x+h/2;
  yHatt=y+F(x,y)*h/2;
  y=y+F(xHatt,yHatt)*h;             % Oppdaterar y
  x=x+h;                            % Oppdaterar x
  yVektor(n+1)=y;
end

% Plottar resultatet
hold on
plot(xVektor, yVektor)
