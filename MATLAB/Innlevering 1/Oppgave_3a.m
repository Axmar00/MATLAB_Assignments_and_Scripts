Funk = @(x)(x^2-8*x+15)/((2*x^2)-50); %Definerer funksjonen
h=1;
%Forløkke som deler h på 2 gjentatte ganger
for n=1:30                    
    x=5+h;                    %x oppdateres, kommer seg nærmere 5 ovenifra.
    VektorX(n)=h;             %Vektoren for x-verdiene til grafen
    VektorYPositiv(n)=Funk(x);%Når x går mot 5 over
    x=5-h                     %x oppdateres, kommer seg nærmere 5 nedenfra.
    VektorYNegativ(n)=Funk(x);%Når x går mot 5 under
    h=h/2;                    %Oppdaterer h til h/2
end 
    
%Plotter inn vektorene logaritmisk
semilogx(VektorX,VektorYPositiv,'r')
hold on
semilogx(VektorX,VektorYNegativ,'b')
grid on %Setter på rutenett
hold off

