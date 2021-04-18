function dx = f(t,x,sp)
    dx = [  sp(1)*(x(2) - x(1)); x(1)*(sp(2) - x(3)) - x(2); x(1)*x(2) - sp(3)*x(3);];
end