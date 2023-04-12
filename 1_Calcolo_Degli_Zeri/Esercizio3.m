%Metodo Traub per il calcolo degli zeri di una funzione
function [xk,n_iter] = Esercizio3(f,f_primo,x0,tol,max_it)
n_iter = 1;
err_rel = 1 + tol;

while err_rel > tol && n_iter <= max_it
    if(f_primo(x0) ~= 0)
    yk = x0 - (f(x0)/f_primo(x0));
    xk = yk - (f(yk)/f_primo(x0));

    err_rel = abs(xk - x0)/abs(xk);
    n_iter = n_iter + 1;
    else
        print("Iterazione finita\n");
    end
    x0 = xk;
end
end