time_span = [0 10] ; %Time Span
R = 1  ;      %Resistance in ohms
C = 1e-6;    %Capacitance in farads

Vin = @(t) 5*sin(2*pi*t);  % Input Voltage as a function, 1 Hz sine wave



f = @(t,Vc)[(1/C)*(Vin(t)-Vc/R)]; %Vc(2) is dVc/dt and Vc(1) = Vc(t)

Vc_0 = 0; %initial condition of voltage

[t,Vc] = ode45(f , time_span , Vc_0);

plot(t , Vc);
xlabel('Time(s)');
ylabel('Capacitor Voltage(V)');
title('Simple RC Circuit');
grid on;

