function [x, iter] = Corde(f, a, b, tol, maxiter)
% Metodo delle corde per risolvere f(x) = 0 in [a,b]
x0 = a;
x1 = b;
iter = 0;

while iter < maxiter
    % Calcolo della prossima approssimazione di x
    x = x1 - f(x1) * (x1 - x0) / (f(x1) - f(x0));
    
    % Controllo del criterio di arresto
    if abs(x - x1) < tol
        return;
    end
    
    % Aggiornamento delle variabili
    x0 = x1;
    x1 = x;
    iter = iter + 1;
end

error("Il metodo delle corde non converge.");
end


