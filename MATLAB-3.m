%1a

h = 0.5;
X = 3;
N = round(X/h);
t= zeros(1,N+1);
T = zeros(1,N+1);
t(1) = 0;
T(1) = 36;
for n = 1:N
    t(n+1) = t(n) + h;
    T(n+1) = T(n) + h*((-6./5).*(T(n)-24));
end

%1b

h = 0.2;
X = 3;
N = round(X/h);
t= zeros(1,N+1);
T = zeros(1,N+1);
t(1) = 0;
T(1) = 36;
for n = 1:N
    t(n+1) = t(n) + h;
    T(n+1) = T(n) + h*((-6./5).*(T(n)-24));
end

%Question 3

N = 20;
Condition = 100;

while Condition > 0.05913
  X = 3;
  h = X/N;
  x = zeros(1,N+1);T = zeros(1,N+1);
  x(1) = 0;T(1) = 36;

  for n = 1:N
    x(n+1) = x(n) + h;
    T(n+1) = T(n) + h*(-6/5*(T(n)-24));
  
  end

  T_exact = 24 + 12*exp(-(6.*x)/5); 

  error = [abs(T-T_exact)];
  
  error(1) = [];
  
  maxerror = max(error);

  if maxerror < 0.05913
    Condition = maxerror;
    N
    break
  end
  N = N + 1;
end

%4

set(0, 'DefaultFigureRenderer', 'painters');
X = 5; 
N = 136; 
h = X/N;
x = zeros(1,N+1);
T = zeros(1,N+1);
x(1) = 0;
T(1) = 36;
for n = 1:N
  x(n+1) = x(n) + h;
  T(n+1) = T(n) + h*(-6/5*(T(n)-(24 + 10*sin(10/(0.5+x(n)^2)))));
end
g = 24 + 10*sin(10./(0.5+x.^2))
[x' T' g']
plot(x, T, 'b', x, g, 'g');
title('Viren Waghela, 400134945');
legend({'T(t)','g(t)'},'Location','southeast');
xlabel('x');ylabel('y');
