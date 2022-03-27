f2 = @(x) sin(x.^2);
Estimat=(f2(1+h) - f2(1))/h;
Estimat2=(f2(1) - f2(1-h))/h;
AvgEstimat = (f2(1+h) - f2(1-h))/(2*h)