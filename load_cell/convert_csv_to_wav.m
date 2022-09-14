clc;
clear all;
close all;

% load data
y=csvread("test_54_e6.csv");
display(y) 

% Constant
Fs = 6250;

% conversion
filename='test_54_e6.wav';
audiowrite(filename,y,Fs)
clear y Fs
[y,Fs]=audioread(filename);
display(y)
display(Fs)
sound(y,Fs);