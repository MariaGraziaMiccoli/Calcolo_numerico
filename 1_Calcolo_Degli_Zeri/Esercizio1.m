%Calcolo degli zeri con il metodo delle secanti
function[xk,n_it] = Esercizio1(f,x0,x1,tol,max_iter)
errore_rel = 1 + tol;
n_it = 1;

while errore_rel > tol && n_it <= max_iter
    d = f(x1)-f(x0);

    if(d ~= 0)
        %iterata generale
        xk = x1 - ((f(x1)*(x1-x0))/d);
        %calcolo errore relativo
        errore_rel = abs(xk - x1)/abs(xk);
        %incremento del numero di iterate
        n_it = n_it + 1;
        %assegnazione dei nuovi valori
        x0 = x1;
        x1 = xk;
    else
        printf("Denominatore uguale a 0");
    end
end