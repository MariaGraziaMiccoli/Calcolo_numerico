clc
%calcolo autovalori di modulo massimo di una matrice quadrata
A = [13 2 0; 2 1 3; 0 3 22];
x0 = [1; 1; 1];
tol = 1e-6;
max_it = 100;
[lambda,i] = Esercizio11(A,x0,tol,max_it);
fprintf("ESERCIZIO 11\n");
fprintf("Soluzione:%.3f\n",lambda);
fprintf("Numero iterate:%d\n\n",i);
%%
A = [13 2 0; 2 1 3; 0 3 22];
x0 = [1; 1; 1];
tol = 1e-6;
max_it = 100;
[lambda_min,n_iter] = Esercizio12(A,x0,tol,max_it);
fprintf("ESERCIZIO 12\n");
fprintf("Soluzione:%.3f\n",lambda_min);
fprintf("Numero iterate:%d\n",n_iter);