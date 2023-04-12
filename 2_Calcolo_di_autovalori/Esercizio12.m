%Esercizio 12: metodo delle potenze inverse per il calcolo
%dell'autovalore di minimo modulo
function [lambda,n_iter] = Exam_Es12(A,x0,tol,max_iter)
v0 = 0;
vk = 0;
n_iter = 1;
criterio_arr = 1;

while criterio_arr> tol*(abs(vk)) && n_iter <= max_iter
    yk = x0/norm(x0,2);
    xk = A \ yk;
    vk = yk'*xk;

    n_iter = n_iter + 1;
    criterio_arr = abs(vk - v0);
    x0 = xk;
    v0 = vk;

end
lambda = 1/vk;
end

