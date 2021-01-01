% [x,y,z] home values for test, in hip frame
x = 0.54641;
y = 0;
z = 0.18;
c = sqrt((x-l1)^2 + z^2);
t3 = acosd((l2^2 + l3^2 - c^2)/(2*l2*l3));
beta = acosd((c^2 + l2^2 - l3^2)/(2*l2*c));
t2 = atand(((c*sind(beta)-l3*sind(t3))/(l3*cosd(t3)+c*cosd(beta)-l2)))+ brute_error;
t1 = atand(y/(l1+l2*cos(t2)+l3*cos(t3)));

% t1 range [-90,90] here also true in atand and in actual bot never to violate this range
% t2 range [-90,90] here also true in atand and in actual bot never to violate this range
% t3 range [0,180] here true in acosd and in actual bot for right leg true, for left leg [-180,0]
% t3 range can be increased to [-180,180] for giving capability for legs to do task