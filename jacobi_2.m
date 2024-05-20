clc
clear

A = [5, 9;3, -6];
b = [5, 4];
x0 = zeros (size(b));
tol= 1e-6;
max_iter= 100;

n = length (b);
x = x0;
iter = 0;
error = inf;

%input :
%A  = Matrix koefisien
%b  = Matrix hasil
%x0 - nilai awal = 0
%tol = batas toleransi
%max_iter = maksimum iterasi

%output :
%nilai x
%iterasi

while error > tol && iter < max_iter;
    x_old = x;
    for i = 1:n
        sigma = 0;
        for j = 1:n
            if j ~= i
                sigma = sigma + A(i,j)*x_old(j);
            end
        end
        x (i) =  (b(i)-sigma) / A(i,i);
    end
    error = norm (x - x_old);
    iter = iter+1;
end
if iter == max_iter && error > tol
    disp ('Iterasi maksimum tercapai');
else
    disp ('metode jacobi selesai di ', num2str(iter,'iterasi'));
end
disp('Solusi:');
disp(x);