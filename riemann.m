clc
clear

function [] = riemann(f, a, b, n);
%f = fungsi
%a = batas bawah
%b = batas atas
%n = jumlah partisi

delta_x = b-a/n;
sigma = 0;

for i = 1:n
    x = a*delta_x; %riemann kiri
    sigma = sigma + f(x)*delta_x;
end
riemann = sigma;
end