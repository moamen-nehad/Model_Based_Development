/*
 * File: Lab6.c
 *
 * Code generated for Simulink model 'Lab6'.
 *
 * Model version                  : 1.1
 * Simulink Coder version         : 9.9 (R2023a) 19-Nov-2022
 * C/C++ source code generated on : Thu Jul 31 22:45:47 2025
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Texas Instruments->C2000
 * Code generation objectives:
 *    1. RAM efficiency
 *    2. Execution efficiency
 * Validation result: Not run
 */

#include "Lab6.h"

/* Block signals and states (default storage) */
DW rtDW;

/* Model step function */
void Lab6_step(void)
{
  /* If: '<S1>/If' incorporates:
   *  Constant: '<S1>/Lower_Threshold'
   *  Constant: '<S1>/Upper_Threshold'
   *  DiscreteIntegrator: '<Root>/Discrete-Time Integrator'
   *  RelationalOperator: '<S1>/Relational Operator'
   *  RelationalOperator: '<S1>/Relational Operator1'
   */
  if (rtDW.DiscreteTimeIntegrator_DSTATE > 50.0) {
    /* Outputs for IfAction SubSystem: '<S1>/If Action Subsystem' incorporates:
     *  ActionPort: '<S2>/Action Port'
     */
    /* Merge: '<S1>/Merge' incorporates:
     *  Constant: '<S1>/Constant'
     *  SignalConversion generated from: '<S2>/In1'
     */
    rtDW.Memory_PreviousInput = 0.0;

    /* End of Outputs for SubSystem: '<S1>/If Action Subsystem' */
  } else if (rtDW.DiscreteTimeIntegrator_DSTATE < 30.0) {
    /* Outputs for IfAction SubSystem: '<S1>/If Action Subsystem1' incorporates:
     *  ActionPort: '<S3>/Action Port'
     */
    /* Merge: '<S1>/Merge' incorporates:
     *  Constant: '<S1>/Constant1'
     *  SignalConversion generated from: '<S3>/In1'
     */
    rtDW.Memory_PreviousInput = 1.0;

    /* End of Outputs for SubSystem: '<S1>/If Action Subsystem1' */
  }

  /* End of If: '<S1>/If' */

  /* Update for DiscreteIntegrator: '<Root>/Discrete-Time Integrator' incorporates:
   *  Constant: '<Root>/Constant'
   *  Gain: '<Root>/Gain'
   *  Gain: '<Root>/Gain1'
   *  Sum: '<Root>/Sum'
   *  Sum: '<Root>/Sum1'
   */
  rtDW.DiscreteTimeIntegrator_DSTATE += 5.0 * rtDW.Memory_PreviousInput -
    (rtDW.DiscreteTimeIntegrator_DSTATE - 20.0) * 0.01;
}

/* Model initialize function */
void Lab6_initialize(void)
{
  /* (no initialization code required) */
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
