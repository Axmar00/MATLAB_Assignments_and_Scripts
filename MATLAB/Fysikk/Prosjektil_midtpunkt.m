% Beregn farten og posisjonen til et prosjektil i tyngdefeltet med
% luftmotstand ved Eulers midtpunktsmetode. Prosjektilet har masse
% m = 2.5 kg og startfart v_0 = 150 m/s med vinkel 40 grader over
% horisontalretningen. Luftmotstandskraften er F_D = -bv, der b = 0.30.




clear % Slett minne

m = 2.5; % Masse
b = 0.3; % Luftmotstandskoeffisient
g = 9.81;

% Starttid og sluttid
t_start = 0; % = t_0
t_slutt = 25; % = t_N

% Startposisjon og startfart
x_start = 0; % x_0
y_start = 0; % y_0
vx_start = 150*cosd(40); % = v_0x
vy_start = 150*sind(40); % = v_0y




% **********
% dt = 1
% **********

% Størrelse/lengde på tidssteg
dt = 1;

% Totalt antall tidssteg
N = (t_slutt-t_start)/dt;

% Startbetingelser
t(1) = t_start; % I Matlab må alle vektorer starte med indeks 1 (n=0 -> n=1)
x(1) = x_start;
y(1) = y_start;
vx(1) = vx_start;
vy(1) = vy_start;

% Tidsløkke

for n=1:N

    % Beregn halvt prøvesteg for farten med Eulers metode
    vx_pr(n) = vx(n) - (b/m)*vx(n)*dt/2;
    vy_pr(n) = vy(n) - ((b/m)*vy(n)+g)*dt/2;

    % Beregn fullt tidssteg med Eulers midtpunktsmetode
    vx(n+1) = vx(n) - (b/m)*vx_pr(n)*dt;
    vy(n+1) = vy(n) - ((b/m)*vy_pr(n)+g)*dt;
    
    % Oppdater tidsvektoren for neste tidspunkt
    t(n+1) = t(n) + dt;
    
    % Beregner posisjonskoordinatene ved Eulers midtpunktsmetode
    x(n+1) = x(n) + vx_pr(n)*dt;
    y(n+1) = y(n) + vy_pr(n)*dt;
    
end

% FERDIG. 

% Beregner eksakte løsninger

% Først med luftfmotstand
vx_eks = vx_start*exp(-(b/m)*t);
vy_eks = vy_start*exp(-(b/m)*t) + (m*g/b)*(exp(-(b/m)*t) - 1);

x_eks = (m*vx_start/b)*(1 - exp(-b*t/m));
y_eks = (m^2*g/b^2 + m*vy_start/b)*(1-exp(-b*t/m)) - m*g*t/b;

% Uten luftmotstand (konstant akselerasjon, bev. lign. ok å bruke)
vx_ul = vx_start*ones(N+1,1); % v_x = v_0x
vy_ul = vy_start - g*t; % v_y = v_0y - g*t

x_ul = vx_start*t; % x = v_x*t
y_ul = vy_start*t - 0.5*g*t.^2; % y = v_0y*t - (1/2)*g*t^2

% Tegner grafene for fartskomponentene: numerisk løsning og eksakte
% løsninger både med å uten luftmotstand for å sammenligne
figure(1);

subplot(2,2,1), plot(t,vx,'ok',t,vx_eks,'-r',t,vx_ul,'--b'),
xlabel('$t$ (s)','FontSize',18,'VerticalAlignment','Top','Interpreter','latex'),
ylabel('$v_x$ (m/s)','FontSize',18,'Interpreter','latex')

subplot(2,2,2), plot(t,vy,'ok',t,vy_eks,'-r',t,vy_ul,'--b'),
xlabel('$t$ (s)','FontSize',18,'VerticalAlignment','Top','Interpreter','latex'),
ylabel('$v_y$ (m/s)','FontSize',18,'Interpreter','latex')

% Tegner grafene for posisjonskoordinatene
subplot(2,2,3), plot(t,x,'ok',t,x_eks,'-r',t,x_ul,'--b'),
xlabel('$t$ (s)','FontSize',18,'VerticalAlignment','Top','Interpreter','latex'),
ylabel('$x$ (m)','FontSize',18,'Interpreter','latex')

subplot(2,2,4), plot(t,y,'ok',t,y_eks,'-r',t,y_ul,'--b'),
xlabel('$t$ (s)','FontSize',18,'VerticalAlignment','Top','Interpreter','latex'),
ylabel('$y$ (m)','FontSize',18,'Interpreter','latex')

% Tegner grafene for y som funksjon av x, med og uten luftmotstand:
% viser oss formen på banen slik den faktisk vil se ut i rommet
figure(2),
plot(x,y,'ok',x_eks,y_eks,'-r',x_ul,y_ul,'--b'),
xlabel('$x$ (m)','FontSize',18,'VerticalAlignment','Top','Interpreter','latex'),
ylabel('$y$ (m)','FontSize',18,'Interpreter','latex')








    
