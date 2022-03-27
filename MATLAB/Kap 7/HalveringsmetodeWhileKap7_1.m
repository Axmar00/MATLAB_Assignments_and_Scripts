%Funksjonen
F=@(x) x^4 - 4*x^2 - 5;
format long
%Grensenes x-verdier
a=1;
b=3;
%Grensenes y-verdier
fa=F(a);
fb=F(b);

teller = 0;   %Teller antall iterasjoner
%L�kke
while b-a>2e-5
    c=(a+b)/2;
    fc=F(c);
    if fa*fc < 0   %Dersom midtpunktet er negativt, sett verdien til b lik c
        b=c;
    else           %Hvis positiv, sett verdien til a lik c
        a=c;        
    end
    teller = teller + 1;     %Antall iterasjoner �kes med 1, for hver halvering
end
x=(a+b)/2;
disp('Tiln�rma x-verdi:'); disp(x);
disp('Antall iterasjoner:'); disp(teller);

%Kontrollerer at feilen er mindre 10^-5
eksakt=sqrt(5);  %Eksakte x-verdien
disp('Forskjellen mellom eksakt og tiln�rma verdi:'); disp(abs(x-eksakt));