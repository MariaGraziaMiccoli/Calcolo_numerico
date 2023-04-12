function [xk,n_iter,res] = Esercizio2(f,f_primo,f_secondo,x0,tol,n_max)
    err_rel = 1 + tol;
    n_iter = 1;

    while err_rel > tol && n_iter <= n_max
        denominatore = 2*(f_primo(x0)^2) - f(x0)*f_secondo(x0);
        
        if denominatore ~= 0
            %iterata generale
            xk = x0 -(2*f(x0)*f_primo(x0))/denominatore;
            %errore relativo
            err_rel = abs(xk - x0)/abs(xk);
            %incremento delle iterate
            n_iter = n_iter + 1;
            x0 = xk;
        else
            print("Denominatore = 0");
        end
    end
    res = f(xk);
end
