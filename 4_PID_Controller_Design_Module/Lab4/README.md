\## Summary



This lab focused on the practical demonstration of P, I, and PI controllers using MATLAB/Simulink with a second-order system, modeled as a mass-spring-damper with transfer function:



&nbsp;--> G(s) = 1/(s^2 + 2s + 1)


The objective was to understand and compare the effect of proportional, integral, and combined proportional–integral actions on system response. Simulations were performed with a step input to evaluate overshoot, settling time, and steady-state error under varying controller gains.



\- \*\*P-Controller:\*\* Increasing proportional gain improved the response speed and reduced rise time, but at the cost of higher overshoot and a persistent steady-state error.

\- \*\*I-Controller:\*\* The integral action effectively eliminated steady-state error by continuously integrating the error signal. However, it introduced slower response times and potential oscillations if the integral gain was too high.

\- \*\*PI-Controller:\*\* By combining proportional and integral actions, the PI controller achieved a balance: it removed steady-state error while maintaining faster response times compared to pure integral control, and with less overshoot than pure proportional control.



The results highlight the complementary nature of proportional and integral terms, and the practical trade-offs involved in controller tuning.



---



\## Discussion



The experiment demonstrated the distinct roles of P and I control strategies:



\- \*\*Proportional control\*\* provides responsiveness but cannot fully eliminate steady-state error, making it insufficient for systems requiring high accuracy.

\- \*\*Integral control\*\* guarantees zero steady-state error, yet its slow corrective action can degrade transient performance and destabilize the system if over-applied.

\- \*\*PI control\*\* effectively combines the strengths of both: the proportional term accelerates the response, while the integral term removes steady-state error. This synergy makes PI controllers one of the most widely used strategies in industry.



From the second-order system simulations, it was evident that tuning both \\(K\_p\\) and \\(K\_i\\) is critical to balancing speed, stability, and accuracy. Properly adjusted, the PI controller minimized steady-state error without excessive overshoot, showcasing its superiority over standalone P or I controllers in practical control applications.



