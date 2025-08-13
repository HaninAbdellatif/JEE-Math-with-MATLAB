syms x
y1 = 2*x - x^2;
y2 = -x; 
sol = solve(y1 == y2, x);
sol = double(sol);
diff_abs = abs(y2 - y1);
area = double(int(diff_abs, x, sol(1), sol(2)))
