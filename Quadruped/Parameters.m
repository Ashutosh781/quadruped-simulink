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

%% Need to adjust and optimize these
gait_time = 1; %In sec
step_time = gait_time/2;
step_height = 0.1; %In m

%% Motor Targets
%In deg
target1 = 0;
target2 = 30;
target2r = -30;
target3 = -120;
target3r = 120;
buffer = 8000;
brute_error = 3;

%% Contact

stiff = 1e6; %N/m
damp = 1e3; %N/(m/s)
u_s = 0.5; 
u_k = 0.3;
critical_vel = 1e-3; %m/s

%% COM Height in m
h = l3_orig + l2 * sind(target2r) + 0.05;
%h = 0.25

%% Predifened & Common
g = 9.8066;
Xc_i = 0;