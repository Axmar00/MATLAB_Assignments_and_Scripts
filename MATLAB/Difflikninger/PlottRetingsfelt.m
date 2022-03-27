% Skript som plottar retningsfelt for ei gitt 1. ordens 
% differensiallikning. Det brukar MATLAB sin quiver-funksjon til å gjere 
% dette.
%
% Ein del "inputs" er hard-koda. Dette gjeld sjølve differensiallikninga, 
% gitt ved funksjonen F(x,y)=y'. Det gjeld også minimal- og 
% maksimal-verdiane til x og y, og det gjeld inndelinga på rutenetet; 
% kor mange punkt ein skal ta med for x og y.
% Der er ingen garanti for at løysinga av initialverdiproblemet vil vere 
% avgrensa av dei gitte grensene for x og y.

% Diff.-likning: y'=F(x,y)
F=@(x,y) 2*     y./x;

% Bestemmer intervall for x og y:
Xmin=1; Xmax=5;
Ymin=1; Ymax=5;

% Set opp rutenettet
Xsteps=30; Ysteps=20;           % Talet på punkt i x- og y-retning

% Set opp matriser med x- og y-verdiar
x=linspace(Xmin,Xmax,Xsteps);       % Vektor med x-verdiar
y=linspace(Ymin,Ymax,Ysteps);       % Vektor med y-verdiar
[X Y]=meshgrid(x,y);                

% Plottar retningsfeltet
figure(1)
U=F(X,Y);                           % Matrise med y'
Scale=sqrt(1+U.^2);                 % Faktor til å justere lengda på pilene
quiver(X,Y,1./Scale,U./Scale,0.5)   % Plottar retningsfelt
set(gca,'fontsize',15)
set(gcf,'paperpositionmode','auto')
axis([Xmin Xmax Ymin Ymax])
V=axis;