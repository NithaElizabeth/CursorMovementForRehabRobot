%%This function is used to plot the motion data x and y .In this function
%%the .mat structure ir reshaped and formatted so as to plot using MATLAB
%%plot() function

clc;
clear all;
close all;

%To load the data from workspace. The z signal is not of our interest
in_x1=load('in_x.mat');
in_x=cell2mat(struct2cell(in_x1));
in_y1=load('in_y.mat');
in_y=cell2mat(struct2cell(in_y1));
x_processed=load('new_x.mat');
x_processed=cell2mat(struct2cell(x_processed));
y_processed=load('new_y.mat');
y_processed=cell2mat(struct2cell(y_processed));

%The matrix loaded is of higher diamention.hence it is reshaped into one
%diamentinal values
X=convertnew(in_x.signals.values);
X_controlled=convertnew(x_processed.signals.values);
Y=convertnew(in_y.signals.values);
Y_controlled=convertnew(y_processed.signals.values);

%To plot the motion data
figure(1);
subplot(2,1,1);
plot(X,Y,'color','r');
title('Raw Data from the sensor')
subplot(2,1,2);
plot(X_controlled,Y_controlled);
title('Data after processing')


