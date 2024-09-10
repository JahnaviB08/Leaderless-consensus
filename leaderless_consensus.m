clear variables;
clc;

A = [0 1;0 0];
B = [0;1];
C = [1 0];
D = 0;

N = 3;
n = 2;

A_bar = kron(eye(N),A);
B_bar = kron(eye(N),B);
%C_bar = kron(eye(N),C);
%D_bar = kron(eye(N),D);

Cf = eye(n);
Cf_bar = kron(eye(N), Cf);
Df = zeros(2,1);
Df_bar = kron(eye(N),Df);

Q = [1 0;0 1];
R = 1;
k = lqr(A,B,Q,R);

L = [2 -1 -1;-1 2 -1;-1 -1 2];