clear all;
close all;

M = 0.5;
m = 0.2;
L = 0.3;
b = 0.1;
g = 9.8;

A = [0, 1, 0, 0;
     0, -b/M, -m*g/M, 0;
     0, 0, 0, 1;
     0, -b/M*L, -g*(m+M)/M*L, 0];

B = [0; 1/M; 0; 1/M*L];
C = eye(4);
D = [0;
     0;
     0;
     0];

Q = [1, 0, 0, 0;
     0, 1, 0, 0;
     0, 0, 2, 0;
     0, 0, 0, 3];

R = 100;

system = ss(A, B, C, D);

K = lqr(system, Q, R);
x = [1;
     0;
     0;
     0];