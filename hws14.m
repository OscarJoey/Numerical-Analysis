function y = hws14(x)
%Homework section 1.4 if x > pi/3 you get a loss of significance on the
%given equation. So for this domain I used the alternate function found
%using the hint given.
    if x <= pi/3 && x >= 0
        y = (cos(x)-cos(2*x)+sin(x)*cos(x))/(sin(x)+1);
%This is the alternate formula when the equation is multiplied by
%(sin(x)+1)/(sin(x)+1) and then sin^2(x) is substituted for a double angle
%identity
    elseif x <= pi/4 && x > pi/3
        y = sin(x) - 1 + cos(x);
%When the domain falls between pi/4 and pi/3, the original equation can be
%used without issue.
    end
end