function derivs = Harmfun3j(t,f_array,k,m,b)

derivs = zeros(2,1);

% dx/dt = v
derivs(1) = f_array(2);

% dv/dt = -k/m*x - b/m*v
derivs(2) = -(k/m)*f_array(1) - (b/m)*derivs(1);

end

