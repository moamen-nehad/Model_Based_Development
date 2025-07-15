*Description
This MATLAB project simulates a planar 2-link robotic arm using a simple graphical user interface (GUI). The simulation visualizes the motion of the arm as both links move together counterclockwise (CCW) and clockwise (CW), with the second link rigidly following the first.

-->The motion is based on forward kinematics, assuming that both joints rotate together in sync.

* The user inputs the lengths of the two links.

* A Simulate button starts the animation.

* A Pause button stops the simulation loop.

* Features
 - GUI-based interface built using uicontrol and axes

 - Real-time animation of robot arm motion

 - Joint markers and live display of joint angles

 - Input validation for link lengths

 - User-controlled simulation loop with start/pause

* Simulation Behavior
 - The arm consists of two links (L1 and L2) connected serially.

 - Both joints rotate together:
    -->theta1 = 0-->90
    -->theta2 = 0-->18

 - The animation loops back and forth between CCW and CW motion.

 - The arm is plotted in two colors:
    -->Link 1: Blue line with joint marker
    -->Link 2: Green line with joint marker

* How It Works
1. GUI Elements
 - edit fields for user to input:
   -->Link 1 length (L1)
   -->Link 2 length (L2)

 - pushbutton to simulate the arm

 - pushbutton to pause the simulation

 - axes area to visualize the motion

2. Core Logic
 - Uses two for-loops for forward and reverse (CW & CCW) motion.

 - Inside the loop:
    -->Calculates joint positions using trigonometric functions (cosd, sind)
    -->Plots both links using separate plot() calls
    -->Updates title with current joint angles
    -->Calls drawnow() to render each frame

 - Uses a flag (pause_flag) to interrupt the loop on Pause

* Input Validation
 - Accepts link lengths between 0.1 and 5 units

 - Shows an error dialog if invalid input is entered

* How to Run
1.Open MATLAB.

2.Save the code as SimpleRobotSimulation.m.

3.Run the script:
   matlab
   Copy code
   SimpleRobotSimulation

4. Enter the desired lengths for Link 1 and Link 2.

5. Click Simulate to start the animation.

6. Click Pause to stop the simulation.


