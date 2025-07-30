clear variables
close all
clc

% Different lengths
L_values = [1 1.5 2 2.5 3];

% Prepare figure for angular displacement
figure(1)
hold on
legend_entries = {};

for i = 1:length(L_values)
    L = L_values(i);        % Set current length
    set_param('Lab3','StopTime','10');  % Set simulation stop time
    simOut = sim('Lab3');    % Run simulation

    % Extract results (assuming output signal is 'theta' and time is 'tout')
    time  = simOut.logsout.getElement('AngularDisplacement').Values.Time;  
    theta = simOut.logsout.getElement('AngularDisplacement').Values.Data;
    theta_dot = simOut.logsout.getElement('AngularVelocity').Values.Data;

    % Plot each run
    plot(time,theta,'DisplayName',['L = ' num2str(L) ' m'])
end

xlabel('Time (s)')
ylabel('Angular Displacement (rad)')
title('Simple Pendulum for Different Lengths')
legend show
grid on
hold off

% Prepare figure for angular displacement
figure(2)
hold on
for i = 1:length(L_values)
    L = L_values(i);        % Set current length                     
    simOut = sim('Lab3');
    logsout = simOut.logsout;
    omega = logsout.getElement('AngularVelocity').Values.Data;
    time  = logsout.getElement('AngularVelocity').Values.Time;
    plot(time, omega, 'DisplayName',['L = ' num2str(L) ' m'])
end
xlabel('Time (s)')
ylabel('Angular Velocity (rad/s)')
title('Simple Pendulum Angular Velocity for Different Lengths')
legend show
grid on
hold off