%Simpson
function [I] = Esercizio10(f,a,b,n)
h = (b - a)/n;
I0 = f(a) + f(b);
somma1 = 0;
somma2 = 0;

%somma1
for j = 1:(n/2)-1
    somma1 = somma1 + f(a + 2*j*h);
end

%somma2
for j = 1:(n/2)
    somma2 = somma2 + f(a + (2*j-1)*h);
end
I = (h/3)*(I0 + 2*somma1 +4*somma2);


end

