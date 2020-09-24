a = input('enter the start of the interval   ')
b = input('enter the end of the interval  ')
tol= input('enter the tol  ')
syms x;
func= input('enter the function  ');
f=inline(func);

if (f(a)*f(b)>0)
    disp('there is no roots found');
end
if (f(a)==0)
    disp('a is one of the roots');
end
if (f(b)==0)
    disp('b is one of the roots');
end

fprintf('i\t a\t b\t c\t fc\n');
n=ceil(log2((b-a)/tol))

for i=0:n
    c = (b+a)/2;
    fc=f(c);
    fprintf('%d\t %f\t %f\t %f\t %f\n',i,a,b,c,fc);
    
    if abs(fc)<=tol
        fprintf('c%d = %f is the aproxx value',i,c)
        break
    end
        if f(a)*fc<0
            b=c;
        else
            a=c;
        end
end

