clc;
matriceA = [2.4, -0.8, -0.7;0.5, 1.5, 0.7;-0.1, 0.8, 2.1];
vettoreB = [0.9;2.7;2.8];
tol = 1e-5;
vettx0 = [0.9;0.9;0.9];
max_iter= 10;
[xk, i, r] = Esercizio7(matriceA, vettoreB, tol, vettx0, max_iter);
fprintf("ESERCIZIO 7:\n");
disp(xk);
fprintf("Numero di iterata:%d\n",n_iter);
fprintf("Residuo:%d\n\n",res);
%%
A = [4 2 1;2 4 2;1 2 4];
b = [7; 8; 7];
tol = 1e-5;
x0 = [1.1; 1.1; 1.1];
max_iter = 100;
[xk, i, r] = Esercizio8(A, b, tol, x0, max_iter);
fprintf("ESERCIZIO 8:\n");
disp(xk);
fprintf("Numero di iterata:%d\n",n_iter);
fprintf("Residuo:%d\n\n",res);
%%
A = [16, 0, 0, 0; 5, 11, 0, 0; 9, 7, 6, 0;4, 14, 15, 1;];
b = [16; 16; 22; 34;];
[xk] = Esercizio13(A,b);
fprintf("ESERCIZIO 13:\n");
fprintf("Soluzione:\n");
disp(xk);
%%
A = [16, 2, 3, 13; 0, 11, 10, 8; 0, 0, 6, 12; 0, 0, 0, 1;];
b = [34; 29; 18; 1;];
[xk]=Esercizio14(A,b);
fprintf("ESERCIZIO 14:\n");
fprintf("Soluzione:\n");
disp(xk);


