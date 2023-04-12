clc;
f=@(x) cos(x);
a=1;
b=2;
tol=1e-15;
maxiter=100;
[x,nit]=Bisezioni(f,a,b,tol,maxiter);
fprintf("METODO DELLE BISEZIONI\n");
fprintf("Zero:%f\n",x);
fprintf("Numero iterate: %d\n\n",nit);

%% 
f=@(x) cos(x);
a=1;
b=2;
tol=1e-15;
maxiter=100;
[x,it]=RegulaFalsi(f,a,b,tol,maxiter);
fprintf("METODO DEL REGULA FALSI\n");
fprintf("Zero:%f\n",x);
fprintf("Numero iterate: %d\n\n",nit);
%%
f=@(x) cos(x);
df=@(x) -sin(x);
x0=1.5;
tol=1e-10;
nitmax=100;
[x,nit,res]=Newton(f,df,x0,tol,nitmax);
fprintf("METODO DI NEWTON\n");
fprintf("Zero:%f\n",x);
fprintf("Numero iterate: %d\n",nit);
%%
f=@(x) cos(x);
a=1;
b=2;
tol=1e-15;
maxiter=100;
[x,nit]=Corde(f,a,b,tol,maxiter);
fprintf("METODO DELLE CORDE\n");
fprintf("Zero:%f\n",x);
fprintf("Numero iterate: %d\n\n",nit);
%%
f=@(x) cos(x);
a=1;
b=2;
tol=1e-15;
maxiter=100;
[xk,i]=Secanti(f,a,b,tol,maxiter);
fprintf("METODO DELLE SECANTI\n");
fprintf("Zero:%f\n",x);
fprintf("Numero iterate: %d\n\n",nit);
%%
f=@(x) cos(x);
a=1;
b=2;
tol=1e-15;
maxiter=100;
[xk,r,i]=QuasiNewton(f,a,b,tol,maxiter);
fprintf("METODO DELLE QUASI NEWTON\n");
fprintf("Zero:%f\n",x);
fprintf("Numero iterate: %d\n",nit);