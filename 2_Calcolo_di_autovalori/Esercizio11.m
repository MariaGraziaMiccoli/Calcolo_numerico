function [lambda,n_iter] = Esercizio11(A,x0,tol,max_it)
v0 = 0;
vk = 0;
n_iter = 1;
criterio_arr = 1;

while n_iter <= max_it && criterio_arr > tol*(abs(vk))
    yk = x0/norm(x0,2);
    xk = A * yk;
    vk =yk' * xk;
    lambda = vk;
    criterio_arr = abs(vk - v0);
    n_iter  = n_iter + 1;
    x0 = xk;
    v0 = vk;

end
end