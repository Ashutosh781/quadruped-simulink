ti1 = 0:0.01:step_time;
a = (-step_height*4)/(step_time^2);
b = (-step_time)*a;
z1 = a*(ti1.^2) + b*(ti1);
%z = (step_height)*sin((ti1*pi)/step_time);
ti2 = (step_time+0.01):0.01:(4*step_time); %time during which the leg is stationary
ti = [ti1 ti2]; %final time array
z2 = zeros([1 150]);  %added zeroes for 3 empty cycles
z = [z1 z2]; %final z array
plot(ti,z);