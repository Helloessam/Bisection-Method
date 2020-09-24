# Bisection-method-Matlab
The bisection method is a root-finding method that applies to any continuous functions for which one knows two values with opposite signs.
![bisection](https://github.com/Helloessam/Bisection-Method/blob/master/800px-Bisection_method.svg.png)
# Algorithm

The method may be written in pseudocode as follows

INPUT: Function f, 
       endpoint values a, b, 
       tolerance TOL, 
       maximum iterations NMAX
CONDITIONS: a < b, 
            either f(a) < 0 and f(b) > 0 or f(a) > 0 and f(b) < 0
OUTPUT: value which differs from a root of f(x) = 0 by less than TOL
 
N ← 1
while N ≤ NMAX do // limit iterations to prevent infinite loop
    c ← (a + b)/2 // new midpoint
    if f(c) = 0 or (b – a)/2 < TOL then // solution found
        Output(c)
        Stop
    end if
    N ← N + 1 // increment step counter
    if sign(f(c)) = sign(f(a)) then a ← c else b ← c // new interval
end while
Output("Method failed.") // max number of steps exceeded

Ref :  Burden & Faires 1985, p. 29. This version recomputes the function values at each iteration rather than carrying them to the next iterations.



