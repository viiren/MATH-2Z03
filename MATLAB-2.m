%Question 1

[x, y] = meshgrid(-6:0.1:6,-6:0.1:6);

a = (x-(8.*y))./(x.^2 + y.^2 +12.*x -12.*y + 33);

Largest_Possible_Slope=0;
[Nx ,Ny] = size(a);

for i = 1:Nx 
    for j = 1:Ny
        if a(i,j)> Largest_Possible_Slope
            Largest_Possible_Slope = a(i,j);
            Max_X = i;
            Max_Y = j;
        end
    end
end 
for k = 1:Nx
    for l = 1:Ny
        if (a(k,l)==Largest_Possible_Slope) && (k~=Max_X) && (l~=Max_Y)
        end
    end
end
Check = max(a);

if Check ~= Largest_Possible_Slope
    disp('checkcode')
else
    xvalue = x(Max_X,Max_Y);
    yvalue = y(Max_X,Max_Y);
    disp([num2str(xvalue),',', num2str(yvalue)])
end

%Question 2

[x, y] = meshgrid(-5:0.2:5,-5:0.2:5);

a = ones(size(x));

b = sin(x.^5/5 + 14*exp(-y.^2/10));

ascaled = a./sqrt(a.^2+b.^2);

bscaled = b./sqrt(a.^2+b.^2);

quiver(x,y,ascaled,bscaled)
axis equal;
title('Direction Field Example for y'' =sin(x.^5/5 + 14*exp(-y.^2/10))');
xlabel('x');
ylabel('y');


%Question 4

[x, y] = meshgrid(-2:0.2:2,-1:0.2:3);

a = ones(size(x));
b = exp(-3.9.*x) - 4.*y;

ascaled = a./sqrt(a.^2+b.^2);
bscaled = b./sqrt(a.^2+b.^2);

x_Exact = -2:0.005:2; 
y_Exact = exp(-4.*x_Exact).*(10.*exp((x_Exact)/10) - 8);

quiver(x,y,ascaled,bscaled)
hold on; 
plot(x_Exact,y_Exact,'LineWidth',2,'color','r');
hold off;

xlim([-2 2]);
ylim([-1 3]);

title('Viren Waghela, 400134945');
xlabel('x');
ylabel('y');
