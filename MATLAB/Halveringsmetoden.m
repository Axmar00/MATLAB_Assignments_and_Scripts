%Halveringsmetoden
%Funksjonen
F=@(x)x - sin(x) - 1;
%Grensene
a=1;
b=3;
fa=F(a);
fb=F(b);
P = 1/8 %Presisjonen

%Whileløkke
while b-a>P  
    c=(a+b)/2;
    fc=F(c);
    if fa*fc < 0
        b=c;
    else
        a=c;        
    end
end

x=(a+b)/2