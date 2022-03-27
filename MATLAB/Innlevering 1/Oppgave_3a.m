Funk = @(x)(x^2-8*x+15)/((2*x^2)-50); %Definerer funksjonen
h=1;
%Forl�kke som deler h p� 2 gjentatte ganger
for n=1:30                    
    x=5+h;                    %x oppdateres, kommer seg n�rmere 5 ovenifra.
    VektorX(n)=h;             %Vektoren for x-verdiene til grafen
    VektorYPositiv(n)=Funk(x);%N�r x g�r mot 5 over
    x=5-h                     %x oppdateres, kommer seg n�rmere 5 nedenfra.
    VektorYNegativ(n)=Funk(x);%N�r x g�r mot 5 under
    h=h/2;                    %Oppdaterer h til h/2
end 
    
%Plotter inn vektorene logaritmisk
semilogx(VektorX,VektorYPositiv,'r')
hold on
semilogx(VektorX,VektorYNegativ,'b')
grid on %Setter p� rutenett
hold off

