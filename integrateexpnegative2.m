function integrateexpnegative2(a,b)
syms x
f = exp(-x^2);
int(f,[a b])