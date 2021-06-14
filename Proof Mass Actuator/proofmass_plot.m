%Shishir Khanal
%MCE 6642
%Plot of true state vs. estimated state of proof mass actuator system
%--------------------------------------
%time column generated by the ramp function
t = obsv_based_comp(:,1);
%true displacement of cart
x1 = obsv_based_comp(:,2);
%true angle of pendulum
theta = obsv_based_comp(:,3);
%estimated displacement of cart
x1hat = obsv_based_comp(:,4);
%estimated angle of pendulum
thetahat = obsv_based_comp(:,5);
%-------------------------------------------
%-------------------------------------------
%Plot of true and estimated displacement response of cart
figure(1)
plot(t,x1,'r',t,x1hat,'b')
xlabel('time (sec)')
ylabel('x (m)')
legend('true state','observer est.','location','best')
title('x: position of cart, with feedback compensation')

%Plot of true and estimated angle response of pendulum
figure(2)
plot(t,theta,'r',t,thetahat,'b')
xlabel('time (sec)')
ylabel('theta (rad)')
legend('true state','observer est.','location','best')
title('theta: Angle of Pendulum, with feedback compensation')
%-------------------------------------------