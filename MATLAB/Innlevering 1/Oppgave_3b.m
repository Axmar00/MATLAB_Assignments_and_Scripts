Funk = @(x)(x^2-8*x+15)/((2*x^2)-50); %Definerer funksjonen
x=1
%Forløkke som øker x
for n=1:100                                      
    VektorX(n)=x;             %Vektoren for x-verdiene til grafen
    VektorY(n)=Funk(x);       %Når x går mot 5 over
    x=x*2;                    %x oppdateres, skal gå måt uendelig             
end 
    
%Plotter inn vektorene logaritmisk
semilogx(VektorX,VektorY,'b') %Plotter inn grafen logaritmisk. Sripete og blå
grid on %Setter på rutenett