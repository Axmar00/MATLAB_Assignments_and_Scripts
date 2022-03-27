t=0:0.001:24; %t-verdiens definisjonsmengde
Funk = @(t) 0.7*sin((pi/6)*(t-3.2));%Deklarer funksjonen
plot(t,Funk(t),'b') %Plotter funksjonen i en figur
hold on


%Setter inn de ulike t-verdiene vi fant
t1=4.7194;
t2=7.6803;
t3=16.7194;
t4=19.6803;

%Plotter inn alle punktene med y=1/2 og de ulike t-verdiene
plot(t1,1/2,'rx')
plot(t2,1/2,'rx')
plot(t3,1/2,'rx')
plot(t4,1/2,'rx')