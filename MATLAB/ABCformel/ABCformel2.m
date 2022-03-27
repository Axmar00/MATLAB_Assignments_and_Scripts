a = input('gi a: ');
b = input('gi b: ');
c = input('gi c: ');

if b^2-4*a*c<0
    disp('Ingen reell løsning')
    
elseif b^2-4*a*c==0
    x=(-b)/2*a
    
else
  x1 = (-b-sqrt(b^2-4*a*c))/(2*a)
  x2 = (-b+sqrt(b^2-4*a*c))/(2*a)
end