%Sostituzione all'indietro
function [xk] = Esercizio14(A,b)
n = length(A);
xk = zeros(n,1);
xk(n) = b(n)/A(n,n);

% inizia da n-1, 
% decrementando di 1 ad ogni iterazione, fino ad arrivare al valore 1.
for i = n-1: -1:1
    denominatore = 1/A(i,i);

    %somma
    somma = 0;
    for j = i + 1: n
        somma = somma + A(i,j)*xk(j);
    end
    xk(i) = denominatore * (b(i)-somma);
end

end