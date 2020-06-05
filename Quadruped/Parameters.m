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
target2 = -120;
target3 = 120;

%%
%Contact

stiff = 1e6; %N/m
damp = 1e3; %N/(m/s)
u_s = 0.5; 
u_k = 0.3;
critical_vel = 1e-3; %m/s

%%
%COM Height
target2_orig = target2 + 90;
h = l3_orig + l2 * sind(target2_orig) + 0.05;
%h = 0.25;