%Skript som lager graf av folkeveksten på 1900-tallet
Folk = [1.65 1.75 1.86 2.07 2.30 2.52 3.02 3.70 4.45 5.30 6.12];
Tiaar=10;
Aar=1900:Tiaar:2000;
plot(Aar, Folk, 'k-', 'linewidth',2)
grid on
set(gca,'fontsize', 12)
xlabel('År')
ylabel('Folketall(i milliarder)')