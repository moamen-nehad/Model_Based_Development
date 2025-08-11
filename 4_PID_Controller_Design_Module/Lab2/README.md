## Discussion

The simulations matched theoretical predictions:

- **First-order systems** are simpler to design and control because their behavior is dominated by a single parameter (τ).
- **Second-order systems** offer more flexibility but require careful tuning of ζ and ωₙ to achieve desired performance.

**Real-world relevance**:
- First-order models appear in RC circuits, thermal processes, and basic speed controllers.
- Second-order models describe suspension systems, mechanical vibrations, and servo mechanisms.

Through parameter variation in MATLAB/Simulink, we saw how system performance can be intentionally tuned for:
- **Speed** (settling time)
- **Stability** (damping)
- **Accuracy** (steady-state error)

This lab bridged the gap between theory and practice, reinforcing how control parameters shape system dynamics in real applications.

---

## Summary

This lab explored the time responses of **first-order** and **second-order systems** using MATLAB and Simulink.

For the **first-order system**:
- The **time constant** (τ) controlled the speed of response — smaller τ meant faster settling.
- The **gain** (K) determined the steady-state output level without affecting the shape of the curve.

For the **second-order system**:
- The **damping ratio** (ζ) and **natural frequency** (ωₙ) shaped the response behavior.
- **Underdamped** systems (ζ < 1) showed oscillations and overshoot.
- **Overdamped** systems (ζ > 1) were slower but avoided oscillations.
- **Critically damped** systems (ζ = 1) gave the fastest non-oscillatory response.

Overall:
- First-order systems had smooth exponential responses.
- Second-order systems displayed a variety of shapes depending on parameter tuning.

---



