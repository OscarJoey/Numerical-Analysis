function [imin, emin] = first(x)
%function with two outputs and 1 input
    n = 30;
    emin = 1;
    h = 1;
%starting parameters
    for i = 1:n;
        h = .25 * h;
        y = (sin(x + h) - sin(x)) / h;
        error = abs(cos(x) - y);
%a for loop, y is computing the derivative of sin, h will approach 
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
