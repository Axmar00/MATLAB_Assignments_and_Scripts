%a)
%i) Fordi det ikke finnes noen metoder på papir og blyant vi kan bruke

%ii)
%x=0:0.01:30;
f1=@(x) sqrt(x);
f2=@(x) cos(x);

%plot(x,f1(x),'b')
%hold on
%plot(x,f2(x),'r')
%grid on

%b
%Funksjonen
F=@(x)x - sin(x) - 1;
%Grensene
a=1;
b=3;
fa=F(a);
fb=F(b);

%Whileløkke
while b-a>1/8
    c=(a+b)/2;
    fc=F(c);
    if fa*fc < 0
        b=c;
    else
        a=c;        
    end
end

x=(a+b)/2