function [n, c, fc, error] = bisection(f, a, b, nmax, e)
%
fa = f(a);
fb = f(b);
    if sign(fa) == sign(fb)
        error = b-a;
        for n = 0:nmax
            error = error/2;
            c = a+error;
            fc = f(c);
            if abs(error)<e
                output (n, c, fr, error)
                if sign(fa)~=sign(fb);
                    c = b;
                    fc = fb;
                else
                a = c;
                fa = fc;
                end
            end
        end
    end
end