%Esercizio 7: Risoluzione del sistema lineare Ax = b tramite
%il metodo di Gauss-Seidel

%metodo Gauss-Seidel
function[xk, i, r] = Esercizio7(A, b, tol, x0, n)
L = tril(A);
U = triu(A,1);
for i = 1:n
    xk = L\ (b - U * x0);
    e_n = norm(xk - x0, "inf") / norm(xk,"inf");
    if (e_n < tol)
        r = norm(A*xk - b, "inf");
        return
    end
    x0 = xk;
end
r = norm(A*xk - b, "inf");
end
