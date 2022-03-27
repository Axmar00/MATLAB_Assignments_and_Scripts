function derivs = Harmfun3g(t,f_array,k,m)

derivs = zeros(2,1);

% dx/dt = v
derivs(1) = f_array(2);

% dv/dt = -k/m*x
derivs(2) = -(k/m)*f_array(1);

end

