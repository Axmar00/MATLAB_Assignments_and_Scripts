% Beregn banen, dvs. posisjonen som funksjon av tid, til en bil som beveger
% seg med en gitt fart v = 2*b*t (svarer til differensialligningen
% dx/dt = 2bt). Bilen starter i posisjonen x = 0 ved tiden t = 0. 

% Beregner 3 numeriske løsninger med tidssteglengde hhv. 1, 0.1 og 0.01 og
% plotter alle 3 i intervallet 0 < t < 3 sammen med analytisk løsning




clear % Slett minne

% Parameter som beskriver farten
b = 1;

% Starttid og sluttid
t_start = 0; % = t_0
t_slutt = 3; % = t_N

% Startposisjon
x_start = 0; % = x_0




% **********
% dt = 1
% **********

% Størrelse/lengde på tidssteg
dt = 1;

% Totalt antall tidssteg
N = (t_slutt-t_start)/dt;

% Opprett vektor/tabell som skal inneholde (de diskrete) tidspunktene
t = [];

% Opprett vektor/tabell som skal inneholde (de diskrete) posisjonene til bilen
x = [];

% Startbetingelser
t(1) = t_start; % I Matlab må alle vektorer starte med indeks 1 (n=0 -> n=1)
x(1) = x_start;

% Tidsløkke (Pedagogisk versjon)

for n=1:N

    % Beregn farten (deriverte) ved nåværende tidspunkt
    v(n) = 2*b*t(n);

    % Oppdater tidsvektoren for neste tidspunkt
    t(n+1) = t(n) + dt;
    
    % Beregn posisjonen ved neste tidspunkt ved Eulers metode
    x(n+1) = x(n) + v(n)*dt;
    
end

% FERDIG. Tegner grafen
figure(1),
plot(t,x,'k','LineWidth',2),
xlabel('$t$ (s)','FontSize',18,'VerticalAlignment','Top','Interpreter','latex'),
ylabel('$x$ (m)','FontSize',18,'Interpreter','latex')

% Hold fast på den samme figuren (for neste plot)
hold on


% **********
% dt = 0.1
% **********

% Gjentar beregningen ovenfor, nå med dt = 0.1 og mer effektiv koding
dt = 0.1;
N = (t_slutt-t_start)/dt;
t_ny = t_start:dt:t_slutt;
x_ny(1) = x_start;
v_ny = 2*b*t_ny;

% Tidsløkke (mer effektiv enn ovenfor)

for n=1:N
    % Beregn posisjon ved neste tidspunkt ved Eulers metode og legg
    % denne posisjonen til som et nytt element i vektoren x_ny
    x_ny = [x_ny, x_ny(n)+v_ny(n)*dt];
end

% FERDIG. Tegner grafen
plot(t_ny,x_ny,'k','LineWidth',2)
hold on


% **********
% dt = 0.01
% **********

% Gjentar beregningen ovenfor, nå med dt = 0.01
dt = 0.01;
N = (t_slutt-t_start)/dt;
t_nny = t_start:dt:t_slutt;
x_nny(1) = x_start;
v_nny = 2*b*t_nny;

% Tidsløkke

for n=1:N
    % Beregn posisjon ved neste tidspunkt ved Eulers metode og legg
    % denne posisjonen til som et nytt element i vektoren x_ny
    x_nny = [x_nny, x_nny(n)+v_nny(n)*dt];
end

% Ferdig. Tegner grafen
plot(t_nny,x_nny,'k','LineWidth',2)
hold on


% Analytisk løsning

t_a = t_start:0.1:t_slutt;
x_a = b*t_a.^2;

plot(t_a,x_a,'or','LineWidth',2)


    
