This lab explored how a first-order system behaves with different inputs and parameter changes.



\### Observations

\- Changing Gain (K):

&nbsp; - Higher K increases the final output value.

&nbsp; - Response speed (rise time, settling time) stays the same.



\- Changing Time Constant (T):

&nbsp; - Larger T → slower response.

&nbsp; - Smaller T → faster response.

&nbsp; - Steady-state value unchanged for step input.



\- Different Inputs:

&nbsp; - Step: Reaches a steady value.

&nbsp; - Ramp: Has a constant steady-state error.

&nbsp; - Parabolic: Error grows over time.



\### Notes on the Code

\- Uses `stepinfo` to capture response metrics for each case.

\- Stores results in cell arrays to avoid structure assignment issues.

\- Subplots and `sgtitle` are used for clear visual comparisons.



Overall, the results match first-order system theory and the script is flexible for testing other scenarios.



