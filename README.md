# Cursor Movement Using Motion Signal for Rehabilitation  Robots
The aim of this project is to build a simulink model so as to move the cursor on the virtual model and reach the target points using motion data acquired using the sensors of a smart phone which acts as the manipulator for this purpose.

## Project in brief
The program is coded in MATLAB Simulink.The program has a simulink model (bio3.slx) and a function file (plotmotiondata.m) for plotting the motion data and a helper function
(convertnew.m) for reshapping and formatting the data saved.

In this project, the test was initially done with both Accelerometer and Gyroscope, however in this experiment, the accelerometer was used as all the target points in the Virtual reality color pallet can be reached with just translations and no rotation was required.Hence for this experiment the signals from the accelerometer alone was used. The data from the accelerometer has basically x, y and z values.The signals are badly affected by the noise and are rapidly changing. Inorder to regulate this calibration was done to the process.On multiplying the x,y,z signals with the callibration matrix, accelerometer Sensor automatically re-adjusts the range of the accelerometer and can effectively calibrate the sensor.The signals after calibration is filtered.For filtering out the noise and to change the sensitivity of the signals, a low-pass filter and a gain block is used inside the subsystem. Using a gain block the sensitivity can be adjusted. The value was tuned and the optimal value was chosen to be 0.1.signal.The magnitude response of the low-pass filter is shown in Figure given below.The low-pass filter was designed with pass-band frequency 2Hz and stop-band frequency 6Hz with a ripple of 0.1dB and maximum stop-band attenuation was chosen as 40dB.The input sample rate was chosen as 100Hz so as to match with the sample time of the accelerometer sensor.

![1](https://user-images.githubusercontent.com/47361086/112382226-08632400-8d05-11eb-845d-8aa5074c159e.PNG)

The final model after implementing the control before connecting the blocks to the VR sinc is depicted in the figure given below.
<img width="857" alt="sim" src="https://user-images.githubusercontent.com/47361086/124819731-e8cad100-df6c-11eb-900c-5f0ca00f8863.PNG">
## System Requirements
Inorder to run this program, the PC must be equipped with : 
* MATLAB
* Simulink
* Android studio SDK 
* MATLAB Support Package for Android device
## Installation and Running Procedure
This program requires a working MATLAB and Simulink installation.
To run this program clone this repository into your workspace
```
git clone https://github.com/NithaElizabeth/CursorMovementForRehabRobot
```
## Author
The system was developed by Nitha Elizabeth John as a part of academic curriculam of EMARO.\
Author  : Nitha Elizabeth John\
Contact : nithaelizabethjohn@gmail.com
