%% Step input to first order system
K = 3;      %Gain
T = 0.25;    %Time Constant
sim_time = 0:0.01:30;

num = [0 K];
den = [T 1];

G = tf(num,den);
[y , t] = step(G , sim_time);

figure(1);
plot(t,y);
xlabel 'Time';
ylabel 'Amplitude';
title 'First Order System with Step Input';

%% Ramp input to first order system

u_ramp = 0.1*sim_time;
[y_ramp t_ramp] = lsim(G , u_ramp , sim_time);

figure(2);
plot(t_ramp , y_ramp);
xlabel 'Time';
ylabel 'Amplitude';
title 'First Order System with Ramp Input';

%% Parabolic input to first order system

u_parabolic = 0.1*(sim_time).^2;
[y_parabolic t_parabolic] = lsim(G , u_parabolic, sim_time);

figure(3);
plot(t_parabolic , y_parabolic);
xlabel 'Time';
ylabel 'Amplitude';
title 'First Order System with Parabolic Input';

%% observing the effect of changing the gain with constant time constant and step input
K_values = 1:1:5;

figure(4);

info_K = cell(length(K_values));

for i = 1:length(K_values)
     num1 = [0 K_values(i)];
     sys = tf(num1 , den);
     [y_k , t] = step(sys , sim_time);
     subplot(length(K_values) , 1 , i);
     plot(t , y_k,'Color',[0.5 0.2 1],'LineWidth',1)
     xlabel 'time'
     ylabel 'Amplitude'
     title (['Gain(K) = ' num2str(K_values(i))]);
     grid on;
     info_K{i} = K_values(i);
     info_K{i} = stepinfo(sys);
     disp(['System Charcteristics at gain(K) = ' num2str(K_values(i))]);
     disp(info_K{i});

 end
sgtitle('Effect of varying the gain value of first order system with constant time constant');

%% observing the effect of changing the time constant with constant gain and step input
T_values = 0.1:0.1:0.5;

figure(5);

info_T = cell(length(T_values));

for i = 1:length(T_values)
     den1 = [T_values(i) 1];
     sys = tf(num , den1);
     [y_T , t] = step(sys , sim_time);
     subplot(length(T_values) , 1 , i);
     plot(t , y_T,'Color',[0.5 0.2 1],'LineWidth',1)
     xlabel 'time'
     ylabel 'Amplitude'
     title (['Time Contant(\tau) = ' num2str(T_values(i))]);
     grid on;
     info_T{i} = T_values(i);
     info_T{i} = stepinfo(sys);
     disp(['System Charcteristics at Time Constant = ' num2str(T_values(i))]);
     disp(info_T{i});

 end
sgtitle('Effect of varying the Time Constant(\tau) value of first order system with constant gain');















