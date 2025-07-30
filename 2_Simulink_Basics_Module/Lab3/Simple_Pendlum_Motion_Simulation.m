%{ This MATLAB script defines and plots the system parameters the differential equation of motion of simple pendlum. 

clear variables
close all

L = 1;      %Length of Pendlum in meters
g = 9.81;   %Acceleration of gravity in ms2

%Equation of motion: L*theta"(t) + g*sin(theta(t)) = 0
%Using ode45 to solve the differential equation, we have to convert it into a first order DE.

%let theta1 = theta(t) --> theta1' = theta2
%let theta2 = theta'(t)--> theta2' = -g/L * sin(theta1))

f = @(t,theta)[theta(2) ; -(g/L)*sin(theta(1))]; %"[theta(2) ; -(g/L) *sin(theta(1))];" corresponds [theta1' ; theta2']

tspan = [0 10]; %defines the beginning (0) and ending (10) of the time span.
theta0 = [0.1 ; 0]; %Assume the pendlum started motion from the initial position slightly of balance and from rest.

[t,theta] = ode45(f , tspan , theta0); % this function gives two coloumns inside "theta" that has the solution for theta(t) and theta'(t) and "t" is the specified time span

%plot the angular displacement theta(t)
figure(1);
plot(t,theta(:,1));
xlabel('Time(s)');
ylabel('Angular Displacement rad');
title('Pendlum Angular Displacement');
grid on;

%plot the angular velocity theta'(t)
figure(2);
plot(t,theta(:,2));
xlabel('Time(s)');
ylabel('Angular Velocity rad/s');
title('Pendlum Angular Velocity');
grid on;
