clc;
close all;
clear all;

load("text54_t3.mat");
%plot(data_force)
index = find(data_force(:,1)>0.4);
index = index(5000:end);
%%
s = data_force(index,7:7);
s = squeeze(s);
plot(s);
signal_detrend = detrend(s,1);
plot(signal_detrend);

%%
Fs = 10000;
filename = 'text54_t3.wav';
audiowrite(filename,signal_detrend,Fs);

%% Butterworth filter 

%superieur a 60Hz 
%inferieur a 500Hz 

fs = 10000; % Sampling rate
n = 2; % Filter order 
lf = 60; % Low frequency cutoff for bandpass
hf = 500; % High frequency cutoff for bandpass

[B,A] = butter(n, [lf hf]/(fs/2));

signal_detrend2 = filtfilt(B,A,signal_detrend);
plot(signal_detrend2);

%cutoff_frequency = 60;
%sampling_frequency = 10000;
%[B,A] = butter(2,cutoff_frequency/(sampling_frequency/2),'low');

%Force(:,kk,1)= filtfilt(B, A,Force(:,kk,1));

% index = find(data.force(:,1)>0:2);
%% convert to wav 

filename = 'text3_t2.wav';
audiowrite(filename,signal_detrend2,fs)
%[signal_detrend2,fs] = audioread("text54_t1.wav");