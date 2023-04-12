function [x,nit,res]=Newton(f,df,x,tol,nitmax)
fprintf('%d \t %1.15f \n',0,x)
res=[];
for nit=1:nitmax
    dfx=df(x);
    if dfx==0
        nit=-1; % flag di errore
        return
    end
    fx=f(x);
    dx=-fx/dfx;
    x=x+dx;
    res(end+1,1)=abs(f(x));
    fprintf('%d \t %1.15f \t %1.1e \t %1.1e\n',nit,x,abs(dx),res(end))
    if abs(dx)<=tol
        return
    end
end
nit=-2; % flag di errore