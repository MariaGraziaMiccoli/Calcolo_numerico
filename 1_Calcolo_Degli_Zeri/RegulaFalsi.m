function[x,it]=RegulaFalsi(f,a,b,tol,maxit)

if f(a)*f(b)>=0
    error('La funzoine non attraversa l''asse x in quest''intervallo');
end

it=0;
fa=f(a);
fb=f(b);

while it<maxit
    %calcolo il punto intermedio
    x=a-fa*(b-a)/(fb-fa);

    % Verifica se la soluzione è stata trovata con una precisione sufficiente
    if abs(f(x))<tol
        return
    end

     % Aggiorna l'intervallo in base alla posizione del punto intermedio
     fx = f(x);
     if fx * fa < 0
         b = x;
         fb = fx;
     else
         a = x;
         fa = fx;
     end
     it = it + 1;
end

error('Il metodo non converge entro il numero massimo di iterazioni.');

