%visualisasi

% %plot
% x = [-3:2:10];
% f = x.^2;
% g = 2*x;
% plot(x,f,'b--',x,g,'r--')
% xlabel('X')
% ylabel('f(x)')
% title('Grafik Fungsi x^2')
% legend('f(x)','g(x)')
% grid on

%subplot
% x = [-100:1:100];
% f = x.^2;
% g = 2*x;
% subplot(2,1,1)
% plot(x,f,'b--')
% xlabel('X')
% ylabel('f(x)')
% title('Grafik Fungsi x^2')
% legend('f(x)','g(x)')
% 
% 
% subplot(2,1,2)
% plot(x,g,'r--')
% xlabel('X')
% ylabel('g(x)')
% title('Grafik Fungsi 2*x')
% legend('f(x)','g(x)')
% 
% grid on


%contour plot

%contoh 1
% x = linspace(-2*pi,2*pi);
% y = linspace(0,4*pi);
% [X,Y] = meshgrid(x,y);
% Z = sin(X)+cos(Y);
% contour(X,Y,Z)

%contoh 1
% x = [-3:0.5:3];
% y = [-3:0.5:3];
% [x,y] = meshgrid(-3:0.3:3);
% z = x.*exp(-x.^2-y.^2);
% mesh(x,y,z);
% grid on

%contoh 2
% Define the function
% [X, Y] = meshgrid(-2:0.2:2, -2:0.2:2);
% Z = X .* exp(-X.^2 - Y.^2);
% % Create the contour plot
% contour(X, Y, Z)
% % Add title and labels
% title('Contour Plot')
% xlabel('X')
% ylabel('Y')

%contoh 3
% Define the function
% [X, Y] = meshgrid(-2:0.2:2, -2:0.2:2);
% Z = exp(-X.^2 - Y.^2);
% 
% % Create the contour plot
% contour(X, Y, Z)
% 
% % Add title and labels
% title('Contour Plot of 2D Gaussian')
% xlabel('X')
% ylabel('Y')



%plot 3d

%contoh 1
% t = 0:pi/500:40*pi;
% xt = (3 + cos(sqrt(32)*t)).*cos(t);
% yt = sin(sqrt(32) * t);
% zt = (3 + cos(sqrt(32)*t)).*sin(t);
% contour(X,Y,Z)
% 
% plot3(xt,yt,zt)
% axis equal
% xlabel('x(t)')
% ylabel('y(t)')
% zlabel('z(t)')


%contoh 2
% Define the function
% [X, Y] = meshgrid(-2:0.2:2, -2:0.2:2);
% Z = X .* exp(-X.^2 - Y.^2);
% 
% % Create the 3D plot
% surf(X, Y, Z)
% 
% % Add title and labels
% title('3D Plot')
% xlabel('X')
% ylabel('Y')
% zlabel('Z')

%contoh 3
% Define the function
% [X, Y] = meshgrid(-2*pi:0.1:2*pi, -2*pi:0.1:2*pi);
% Z = sin(sqrt(X.^2 + Y.^2));
% 
% % Create the 3D plot
% surf(X, Y, Z)
% 
% % Add title and labels
% title('3D Sine Wave')
% xlabel('X')
% ylabel('Y')
% zlabel('Z')

%25 April 2024

% %f1 equal maxima
% x = [0:0.001:1];
% y = (sin(5*pi*x)).^6;
% plot(x,y, '-b');


%f2 decreasing maxima
% x = 0:0.001:1;
% y = exp(-2*log(2)*((x-0.1)/0.8).^2).*(sin(5*pi*x)).^6;
% plot(x,y,'-b');
% xlabel('X')
% ylabel('f(x)')
% title('grafik fungsi')
% grid on

%f3 himmeblau
% Define the range of x and y
% x = -10:0.2:10;
% y = -10:0.2:10;
% 
% % Create a meshgrid of x and y
% [X, Y] = meshgrid(x, y);
% 
% % Calculate the function values on the meshgrid
% Z = (X.^2 + Y - 11).^2 + (X + Y.^2 - 7).^2;
% 
% % Create a 3D plot of the function
% figure;
% plot3(X, Y, Z);
% title('Himmelblau Function');
% xlabel('x');
% ylabel('y');
% zlabel('f(x,y)');

%f4 second minima
% Define the range of x and y
% x = -4:0.05:4;
% y = -4:0.05:4;
% 
% % Create a meshgrid of x and y
% [X, Y] = meshgrid(x, y);
% 
% % Calculate the function values on the meshgrid
% Z = 1/2*(X.^4 - 16*X.^2 + 5*X) + 1/2*(Y.^4 - 16*Y.^2 + 5*Y);
% 
% % Create a 3D plot of the function
% figure;
% mesh(X, Y, Z);
% title('Second Minima Function');
% xlabel('x');
% ylabel('y');
% zlabel('f(x,y)');
% colorbar

%f5 six hum camel back
% x = -1.9:0.1:1.9;
% y = -1.1:0.1:1.1;
% [X, Y] = meshgrid(x, y);
% Z = (4 - 2.1*X.^2 + X.^4/3).*X.^2 + X.*Y + (4*Y.^2 - 4).*Y.^2;
% figure(1)
% surf(X, Y, Z);
% figure(2)
% surfc(X, Y, Z);
% figure(3)
% mesh (X, Y, Z);
% title('Six Hump Camel Back Function');
% xlabel('x');
% ylabel('y');
% zlabel('f(x,y)');

%f6 bird
% Define the x and y ranges
% x = -10:0.2:10;
% y = -10:0.2:10;
% 
% % Create a meshgrid of x and y
% [X, Y] = meshgrid(x, y);
% 
% % Define the function
% Z = sin(X).*exp((1-cos(Y)).^2) + cos(Y).*exp((1-cos(Y)).^2) + (X-Y).^2;
% 
% figure(1)
% surf(X, Y, Z);
% figure(2)
% surfc(X, Y, Z);
% figure(3)
% mesh (X, Y, Z);
% title('Six Hump Camel Back Function');
% xlabel('x');
% ylabel('y');
% zlabel('f(x,y)');
