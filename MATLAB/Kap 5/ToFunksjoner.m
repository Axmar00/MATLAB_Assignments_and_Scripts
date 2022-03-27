%Kapittel 5.5
%c)
function F=ToFunksjoner(x)

%Funksjonen f(x)=cos(pi*x) + 2 når x<0 og 
%x^2-2 når x er større eller lik 2.
%Funksjonen tar begge skalarer som input.

if x<2
    F=cos(pi*x)+2;
else 
    F=x^2-2;
end


%d
%F=(x<2).*(cos(pi*x)+2) + (x>=2).*(x.^2-2);

