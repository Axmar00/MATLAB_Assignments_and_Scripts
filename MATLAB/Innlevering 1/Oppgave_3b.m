Funk = @(x)(x^2-8*x+15)/((2*x^2)-50); %Definerer funksjonen
x=1
%Forl�kke som �ker x
for n=1:100                                      
    VektorX(n)=x;             %Vektoren for x-verdiene til grafen
    VektorY(n)=Funk(x);       %N�r x g�r mot 5 over
    x=x*2;                    %x oppdateres, skal g� m�t uendelig             
end 
    
%Plotter inn vektorene logaritmisk
semilogx(VektorX,VektorY,'b') %Plotter inn grafen logaritmisk. Sripete og bl�
grid on %Setter p� rutenett