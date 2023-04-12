function [xk] = Esercizio13(A,b)
n = 4;
xk = zeros(n,1);
xk(1) = b(1)/A(1,1);

for i = 2:n
    frazione = 1/A(i,i);

    %somma
    somma = 0;
    for j = 1: (i-1)
        somma = somma + A(i,j)*xk(j);
    end
    xk(i) = frazione * (b(i)-somma);
end

end

