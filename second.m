function [imin, emin] = second(x)
%function with two outputs and 1 input
    n = 30;
    emin = 1;
    h = 1;
%starting parameters
    for i = 1:n;
        h = .25 * h;
        y = ((x + h)^3 + 2*(x + h) - 5 - x^3 - 2*x + 5) / h;
        error = abs(3*x^2 + 2 - y);
%a for loop, y is computing the derivative of x^3+2x-5, h will approach 
%to zero by becoming smaller as it is multiplied by .25 each loop
%around.
        if error < emin
            emin = error;
            imin = i;
%imin is how many loops it took to get to an answer within our
%error percentage, and emin is that error percentage that we
%ended up at.
        end
    end
end
