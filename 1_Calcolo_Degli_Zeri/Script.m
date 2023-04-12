%Script con tutti gli esercizi sul calcolo degli zeri
clc

%Eserizio 1
f = @(x) (sin(x)/x)-x; 
x0 = 1;
x1 = 0.9;
tol = 10e-10;
max_iterate=50;
[zero,numeroIterate] = Esercizio1(f,x0,x1,tol,max_iterate);
fprintf("ESERCIZIO 1:\n");
fprintf("Zero:%f\n",zero);
fprintf("Numero iterate: %d\n\n",numeroIterate);
%% Esercizio 2
f = @(x) sin(x) - x^3;
f_primo = @(x) cos(x) - 3*x^2;
f_secondo = @(x) -sin(x) - 6*x;
x0 = 1;
n_max = 100;
tol = 1e-12;
[xk,n_iter,res] = Esercizio2(f,f_primo,f_secondo,x0,tol,n_max);
fprintf("ESERCIZIO 2\n");
fprintf("Zero:%f\n",xk);
fprintf("Numero iterate:%d\n",n_iter);
fprintf("Residuo:%f\n\n",res);
%% Esercizio 3
f = @(x) 1-(x^2/2)-x^3;
f_primo = @(x) -x - 3*(x)^2;
tol = 1e-10;
x0 = .99;
max_it = 50;
[xk,n_iter] = Esercizio3(f,f_primo,x0,tol,max_it);
fprintf("ESERCIZIO 3\n");
fprintf("Zero:%f\n",xk);
fprintf("Numero iterazioni:%d\n\n",n_iter);
%% Esercizio 4
S = 286797;
n = 5;
tol = 1e-10;
max_it = 100;
[xk,n_iter] = Esercizio4(S,n,tol,max_it);
fprintf("ESERCIZIO 4:\n");
fprintf("Risultato:%f\n",xk);
fprintf("Numero di iterate:%d\n\n",n_iter);
%% Esercizio 5
f = @(x)sin(x)-log(x);
x0 = 1;
tol = 1e-8;
max_it=50;
[xk,n_iter,res] = Esercizio5(f,x0,tol,max_it);
fprintf("ESERCIZIO 5:\n");
fprintf("Zero:%f\n",xk);
fprintf("Numero iterate:%d\n",n_iter);
fprintf("Residuo:%f\n\n",res);
%% Esercizi 6
f = @(x) exp(x)-1-cos(x);
x0 = 0.5;
h = 10^(-6);
tol = 1e-8;
max_iter = 50;
[xk,n_it,res] = Esercizio6(f,x0,h,tol,max_iter);
fprintf("ESERCIZIO 6:\n");
fprintf("Zero:%f\n",xk);
fprintf("Numero iterate:%d\n",n_it);
fprintf("Residuo:%f\n\n",res);