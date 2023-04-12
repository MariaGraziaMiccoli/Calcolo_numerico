clc;
f = @(x) sin(pi * x);
a = 0;
b = 1;
n = 4;
n_iter = 1;
iter_max = 10;
I0 = Esercizio9(f,a,b,n);
fprintf("ESERCIZIO 9\n");

while n_iter <= iter_max
    n = n * 2;
    I = Esercizio9(f,a,b,n);
    if(abs(I - I0) < 1e-3)
        n_iter = iter_max + 1;
        fprintf("SOLUZIONE:%.4f\n\n",I);
    else
        n_iter = n_iter + 1;
    end
    I0 = I;
end

%%
f= @(x) tan(x);
a = 0;
b = pi / 4;
n = 4;
n_it = 1;
it_max = 10;
I0 = Esercizio10(f,a,b,n);
fprintf("Esercizio 10\n");

while n_it <= it_max
    n = n*2;
    I = Esercizio10(f,a,b,n);
    n_it = n_it + 1;
    if(abs(I - I0) < 1e-4)
        n_it = it_max + 1;
        fprintf("SOLUZIONE:%.4f\n",I);
    else
        n_it = n_it + 1;
    end
    I0 = I;
end

