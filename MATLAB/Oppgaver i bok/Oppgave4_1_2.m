Side 35
x=1:0.0001:5;
f = @(x) exp(x.^5).*log(1+exp(-x.^5));

plot(x,f(x),'b');


