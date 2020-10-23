%% Parameters

density = 1975; %In Kg/m^3

%In meters
robot_l = 1;
robot_w = 0.4;
robot_b = 0.1;

%In meters
l1 = 0.2;
r1 = 0.05;
l2 = 0.4;
l3_orig = 0.4;
r = 0.02;
l3 = l3_orig-r;

motion_time_constant = 0.01; %In sec Filter time
spring_stiff = 1; %In N*m/rad
damping = 0.01; %In N*m/(rad/s)
gait_time = 0.8; %In sec

%%
%Motor Targets
%In deg
target1 = 0;
target2 = 30;
target2r = -30;
target3 = -120;
target3r = 120;
buffer = 8000;

%%
%Contact

stiff = 1e6; %N/m
damp = 1e3; %N/(m/s)
u_s = 0.5; 
u_k = 0.3;
critical_vel = 1e-3; %m/s

%%
%COM Height in m
h = l3_orig + l2 * sind(target2r) + 0.05;
%h = 0.25

%% Predifened & Common
g = 9.8066;
iden3 = eye(3);
E = zeros(6,6);
E(1:3,1:3) = iden3;
p = [0;0;1;0;0;0];

%% Module 0 = Body

% N0 = P0 = [L0 0; 0 1] (6x6) Find L0 (3x3)
rho = zeros(6,1);
rho(6,1) = g;
% M0 = [I0 mkdk x 1; -mkdk x 1 mk1] (6x6)
% Omega0 = [wk x1 0; 0 wk x1] (6x6) wk = angular velocity
% W0f = external wrench
% W0 = final wrench

%% Module 1 = RF leg

% A10 = doubt
b2_1 = 0;
a2_1 = l1;
alpha2_1 = -90;
a21x1_1 = [0 b2_1*cosd(alpha2_1) b2_1*sind(alpha2_1); -b2_1*cosd(alpha2_1) 0 a2_1; -b2_1*sind(alpha2_1) -a2_1 0];

A21_1 = eye(6);
A21_1(4:6,1:3) = a21x1_1;
% A21_1dot = doubt
% Omega2_1 = doubt
% M2_1 = doubt

b3_1 = 0;
a3_1 = l2;
alpha3_1 = 0;
a32x1_1 = [0 b3_1*cosd(alpha3_1) b3_1*sind(alpha3_1); -b3_1*cosd(alpha3_1) 0 a3_1; -b3_1*sind(alpha3_1) -a3_1 0];

A32_1 = eye(6);
A32_1(4:6,1:3) = a32x1_1;
