%% Parameters
ti1 = 0:0.01:step_time;
ti2 = (step_time+0.01):0.01:(2*step_time); %time during which the leg is stationary
ti = [ti1 ti2]; %final time array
z2 = zeros([1 50]);  %added zeroes for empty cycles (50 x number of empty cycles)

%% Polynomial trajectory
a = (-step_height*4)/(step_time^2);
b = (-step_time)*a;
z1_p = a*(ti1.^2) + b*(ti1);

%% Sine trajectory
z1_s = (step_height)*sin((ti1*pi)/step_time);

%% Z array
z_p = [z1_p z2]; %final z array (polynomial trajectory)
z_s = [z1_s z2]; %final z array (sine trajectory)

%% Plot
figure('Name','End effector Z-Trajectory','NumberTitle','off');

subplot(2,2,1)
plot(ti,z_p)
xlabel('Time')
ylabel('Z position')
title('Polynomial trajectory')

subplot(2,2,2)
plot(ti,z_s)
xlabel('Time')
ylabel('Z position')
title('Sine trajectory')

subplot(2,2,[3,4])
plot(ti,z_p,ti,z_s)
xlabel('Time')
ylabel('Z position')
title('Z-trajectory (Both)')
legend('Polynomial','Sine')