x = 0.54641;
y = 0;
z = 0.18;
c = sqrt((x-l1*cos(t1))^2 + z^2);
t3 = acosd((l2^2 + l3^2 - c^2)/(2*l2*l3));
beta = acosd((c^2 + l2^2 - l3^2)/(2*l2*c));
t2 = atand(((c*sind(beta)-l3*sind(t3))/(l3*cosd(t3)+c*cosd(beta)-l2)));
t1 = atand(y/(l1+l2*cos(t2)+l3*cos(t3)));

