% 5,8, 9
syms x
y1 = 2*x - x^2;
y2 = -x; 
sol = solve(y1 == y2, x);
sol = double(sol);
diff_abs = abs(y2 - y1);
area = double(int(diff_abs, x, sol(1), sol(2)))

% 3, 
syms x y
eq1 = y == 2*x - x^2;
eq2 = y == -x; 
sol = solve([eq1, eq2], [x, y]);
sol_x = double(sol.x);
sol_y = double(sol.y);
x1 = solve(eq1, x);
x2 = solve(eq2, x);
diff_abs = abs(x2 - x1);
area = double(int(diff_abs, y, sol_y(1), sol_y(2)))



% 6
f = @(x) abs(x);
area = integral(f, -1, 2)

% 7
>> syms y
x = 4 - y^2;
>> sol = solve(0 == x, y);
area = double(int(x, y, sol(1), sol(2)))


% 1
>> x = 0:2;
y1 = 2.^x;           % elementwise power
y2 = 2*x - x.^2;     % elementwise power for x^2
diff = y1 - y2;
area = trapz(x, abs(diff));

%11

%% exploring the graph
y1 = linspace(-10, 10, 400);
 x1 = y1.^2 / 4;
x2 = linspace(-10, 10, 400); 
y2 = x2.^2 / 4; 
figure;
plot(x1, y1, 'r', 'LineWidth', 2); hold on;
plot(x2, y2, 'b', 'LineWidth', 2);
plot([4 4], [-10 10], 'g--', 'LineWidth', 2);
plot([-10 10], [4 4], 'k--', 'LineWidth', 2);
ax = gca; ax.XAxisLocation = 'origin'; ax.YAxisLocation = 'origin';
>> % areas
>> y1 = linspace(0, 4, 1000);
 x1 = y1.^2 / 4;
>> x2 = sqrt(4*y1);
>> area1 = trapz(y1, x1);
>> area2 = trapz(y1, x2);
>> y2 = linspace(0, 4, 1000);
>> x3 = y2.^2 / 4;
>> area3 = trapz(y2, x3);


