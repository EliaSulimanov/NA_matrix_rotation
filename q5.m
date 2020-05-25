%% ========Workspace init=========
clear; clc;
load('A.mat');
load('B.mat');

%% =========Matrix calcs==========
ATB = A'*B;
[U,S,V] = svd(ATB);
R_star = U*V';
rotated_A = A*R_star;

%% =====Pre-rotated graphics======
figure('Name', 'Pre-rotated graphics', 'NumberTitle', 'off');
plot3(A(:,1), A(:,2), A(:,3), '.r');
hold on;
plot3(B(:,1), B(:,2), B(:,3), '.b');
axis equal off;


%% =======Rotated graphics========
figure('Name', 'Rotated graphics', 'NumberTitle', 'off');
plot3(rotated_A(:,1), rotated_A(:,2), rotated_A(:,3), 'or');
hold on;
plot3(B(:,1), B(:,2), B(:,3), '.b');
axis equal off;
