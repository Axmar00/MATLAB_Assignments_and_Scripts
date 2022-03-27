clear; clc;

% Fjærkonstanten
k = 350;
% massen til klossen
m = 2.0;

% initital posisjon
x_0 = 0.070;
% initial fart
v_0 = 0.0; 

% array med initial-betingelsene
InitCond = [x_0 v_0];

% tidsintervallet
t_int = [0 2];

%ode-45-funksjonen 
[T,F] = ode45(@(t,f_array)Harmfun3g(t,f_array,k,m),...
    t_int,InitCond);

% Energien fjær-kloss-systemet
E_p = 0.5*k*F(:,1).^2; % Potensiell energi
E_k = 0.5*m*F(:,2).^2; % Kinetisk energi
E = E_p + E_k; % Total mekanisk energi



figure(1)

%Plotter numerisk løsning av x(t)
subplot(2,2,1), plot(T,F(:,1),'-k','LineWidth',2.5),
xlabel('$t$ (s)','FontSize',18,'VerticalAlignment','Top','Interpreter','latex'),
ylabel('$x$ (m)','FontSize',18,'Interpreter','latex')
hold on

%Plotter analytisk løsning av posisjonen x(t)
t_an = [0:0.05:2];
x_an = 0.07*cos(13.23 * t_an);
plot(t_an,x_an,'or','LineWidth',1.2)

lh = legend('$Numerisk$','$Analytisk$');
set(lh,'Interpreter','latex');


%Plotter numerisk løsning av v(t)
subplot(2,2,2), plot(T,F(:,2),'-k','LineWidth',2.5),
xlabel('$t$ (s)','FontSize',18,'VerticalAlignment','Top','Interpreter','latex'),
ylabel('$v$ (m/s)','FontSize',18,'Interpreter','latex')

%Plotter numerisk løsning av Energi-fordelingen
subplot(2,2,3), plot(T,E_p,'-b','LineWidth',2),
xlabel('$t$ (s)','FontSize',18,'VerticalAlignment','Top','Interpreter','latex'),
ylabel('Energi (J)','FontSize',18,'Interpreter','latex')
hold on

subplot(2,2,3), plot(T,E_k,'-r','LineWidth',2),
hold on
subplot(2,2,3), plot(T,E,'-k','LineWidth',2),

lh = legend('$E_p$','$E_k$','$E$');
set(lh,'Interpreter','latex');

