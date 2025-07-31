/*
 * File: Lab6.h
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

#ifndef RTW_HEADER_Lab6_h_
#define RTW_HEADER_Lab6_h_
#ifndef Lab6_COMMON_INCLUDES_
#define Lab6_COMMON_INCLUDES_
#include "rtwtypes.h"
#endif                                 /* Lab6_COMMON_INCLUDES_ */

/* Block signals and states (default storage) for system '<Root>' */
typedef struct {
  real_T DiscreteTimeIntegrator_DSTATE;/* '<Root>/Discrete-Time Integrator' */
  real_T Memory_PreviousInput;         /* '<Root>/Memory' */
} DW;

/* Block signals and states (default storage) */
extern DW rtDW;

/* Model entry point functions */
extern void Lab6_initialize(void);
extern void Lab6_step(void);

/*-
 * These blocks were eliminated from the model due to optimizations:
 *
 * Block '<Root>/Scope' : Unused code path elimination
 */

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Use the MATLAB hilite_system command to trace the generated code back
 * to the model.  For example,
 *
 * hilite_system('<S3>')    - opens system 3
 * hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'Lab6'
 * '<S1>'   : 'Lab6/Control Logic'
 * '<S2>'   : 'Lab6/Control Logic/If Action Subsystem'
 * '<S3>'   : 'Lab6/Control Logic/If Action Subsystem1'
 * '<S4>'   : 'Lab6/Control Logic/If Action Subsystem2'
 */
#endif                                 /* RTW_HEADER_Lab6_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
