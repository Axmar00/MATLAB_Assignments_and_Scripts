f = @(x) x.^4 - 4*x.^2 - 5;
fd = @(x) 4*x.^3 - 8*x;
x=3;

for n=1:5
    x = x - (f(x)/fd(x));
end
x