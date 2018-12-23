%1a)

h = 0.4;
X = 2;
N = round(X/h);
x = zeros(1,N+1);
y = zeros(1,N+1);
x(1) = 0;
y(1) = 3;
for n = 1:N
    x(n+1) = x(n) + h;
    y(n+1) = y(n) + h*(((x(n)).^2)*(y(n))/4);
end

disp(y(N+1));

%1b)

h = 0.2;
X = 2;
N = round(X/h);
x = zeros(1,N+1);
y = zeros(1,N+1);
x(1) = 0;
y(1) = 3;
for n = 1:N
    x(n+1) = x(n) + h;
    y(n+1) = y(n) + h*(((x(n)).^2)*(y(n))/4);
end

disp(y(N+1));


%3:

h = 0.4;
X = 2;
N = round(X/h);
x = zeros(1,N+1); 
y = zeros(1,N+1); 
x(1) = 0; 
y(1) = 3; 

for n = 1:N 
  x(n+1) = x(n) + h; 
  y(n+1) = y(n) + h*(((x(n)).^2)*(y(n))/4);
end

x2 = x;
y2 = y;

h = 0.2;
X = 2;
N = round(X/h);
x = zeros(1,N+1); 
y = zeros(1,N+1); 
x(1) = 0; 
y(1) = 3; 

for n = 1:N 
  x(n+1) = x(n) + h; 
  y(n+1) = y(n) + h*(((x(n)).^2)*(y(n))/4);
end

x1 = x;
y1 = y;

h = 0.1;
X = 2;
N = round(X/h);
x = zeros(1,N+1); 
y = zeros(1,N+1); 
x(1) = 0; 
y(1)= 3;

for n = 1:N 
  x(n+1) = x(n) + h; 
  y(n+1) = y(n) + h*(((x(n)).^2)*(y(n))/4);
end

yExact = 3*exp(x.^3./12);

plot(x,yExact,'b',x,y,'r',x1,y1,'c',x2,y2,'m');
title('Viren Waghela, 400134945');
legend('exact solution','h=0.1','h=0.2','h=0.4',...
       'Location','NorthWest');
xlabel('x'); ylabel('y');


%4:

h = 0.01; % time step
X = 17; % maximum value of x
N = round(X/h); 
x = zeros(1,N+1); 
y = zeros(1,N+1); 
x(1) = 0; 
y(1) = 9.99; 

for n = 1:N % Loop to generate steps from n = 1 to n = N
  x(n+1) = x(n) + h; 
  y(n+1) = y(n) + h*(-y(n)./(sqrt(10.^2-y(n).^2))); 
end

x1 = x;
y1 = y;


plot(x1,y1,'b');
xlim([0 17]);

title('Viren Waghela 400134945'); 
xlabel('x'); ylabel('y'); 


