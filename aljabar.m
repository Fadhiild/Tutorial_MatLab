% clc
% clear

%aljabar
%cara 1
% syms x
% y = 2*x+12*x+6 == 0;
% solusi = solve(y,x)

%cara 2
% roots([2, 12, 6])

% %kuadrat
% syms x
% y = x^2-3*x - 28 == 0;
% solusi = solve(y,x)

%diskriminan
% a = input('nilai a = ');
% b = input('nilai b = ');
% c = input('nilai c = ');
% d = b^2-4*a*c;
% if d>0
%     x1 = (-b+sqrt(d))/(2*a);
%     x2 = (-b-sqrt(d))/(2*a);
%     disp(['solusi tunggal untuk x1 = ',num2str(x1)]);
%     disp(['solusi tunggal untuk x2 = ',num2str(x2)]);
% elseif d == 0
%     x = -b/(2*a);
%     disp(['solusi tunggal x =', num2str(x)]);
% else
%     disp('tidak ada solusi');
% end

%Sistem Persamaan Linear
%5x + 9y = 5
%3x - 6y = 4
% %Ax=b->x=A/b
% A = [9 5; 3 -6];
% b = [ 5 4];
% x = A/b;
% disp(x); 

% % Define the matrix A and the vector b
% A = [5 9; 3 -6];
% b = [5; 4];
% 
% % Compute the solution x1 using the left division operator (/)
% x1 = A \ b;
% 
% % Compute the inverse of A
% B = inv(A);
% 
% % Compute the solution x2 using matrix multiplication
% x2 = B * b;
% 
% % Display the solutions
% disp(x1);
% disp(x2);

% %metode jacobi
% function[x, iter] = jacobi(A, b, x0, tol, maxiter)
% n = length(b); %pjg matriks
% x = x0; %init nilai awal
% iter = 0; %init iterasi awal
% error = inf; %set error sbg di awal perhitungan
% 
% %input:
% %A = mtx koef
% %b = mtx hasil
% %x0 = nilai awal = 0
% %tol = batas toleransi
% %max_iter = maks iterasi
% 
% %output:
% %nilai awal
% %iterasi
% 
% while error > tol && iter < maxiter
%     x_lama = x;
%     for i = 1:n
%         sigma = 0;
%         for j = 1:n
%             if j ~= i
%             sigma = sigma + A(i,j) * x_lama(j);
%         end
%     end
%     x(i) = (b(i) - sigma) / A(i,i);
% end
% error = norm(x-x_lama);
% iter = iter + 1;
% if iter == maxiter && error>tol
%     disp('iterasi maksimum tercapai');
% else
%     disp(['hasil metode jacobi berakhir di ', num2str(iter), 'iterasi.']);
% end

