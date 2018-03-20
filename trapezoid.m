function y = trapezoid(f, a, b, n)
h = (b-a)/n;
s = 1/2*((f(a) + f(b)));
    for i = 1:n-1
    x = a + i*h;
    s = s + f(x);
    end
y = s*h;
end
%f = @(x) exp(-x^2); y = trapezoid(f, 0, 1)
%y =
%
%    0.7468
%
%f = @(x) exp(-x^2); y = trapezoid(f, 0, 1, 60)
%
%y =
%
 %   0.7468