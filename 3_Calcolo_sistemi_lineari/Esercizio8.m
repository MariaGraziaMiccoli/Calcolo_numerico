%metodo Jacobi per risoluzione di sistemi lineari
%metodo Jocobi
function[xk, r, i] = Esercizio8(A, b, tol, x0, n)
D = triu(tril(A));
R = A - D;
for i = 0:n
    xk = D \ (b - R * x0);
    e_r = norm(xk - x0, "inf") / norm(xk, "inf");
    if e_r < tol
        r = norm(A * xk - b, "inf");
        return
    end
    x0 = xk;
end
r = norm(A * xk - b, "inf");
end