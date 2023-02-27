%% Post-processing force sensor and accelerometer data

clear all;
close all;

%load data
load("text_5_v2_p2.mat");  

% low-pass filter at 1 kHz to match human perception
fs = 10000;
filt = lowpass(data_force,1000,fs);

%!! change filter ! try the designfilt+ add filtfilt

% to check if filtering's ok
%pspectrum(filt,fs);
 
%% Filtered signal - CALCULATE FRICTION COEFFICIENT AND POWER SPECTRUM

% Perceptual roughness increases with the intensity of the vibrations

normal_force = filt(:,3);
lat_force = sqrt(filt(:,1).^2+filt(:,2).^2);
acc = filt(:,7)/93.8e-3; %convert V to g

% Detrend
signal_detrend = detrend(acc,2);
plot([signal_detrend,acc])
legend('detrend','original')

%
plot([abs(normal_force),lat_force])
%%
%figure;
%plot([abs(normal_force),lat_force]);
%legend('normal-force','lateral-force')

compt = 1;
mat_res = [];
mat_accFinal ={};
mat_acc={};
res = 0;
i = 1;
bool = 0;
moy = 0;
normal_force=abs(normal_force);

for i=1001:length(normal_force)-1000
    test=mean(normal_force(i-1000:i+1000));

    if bool == 0
        if (test>= 0.1) %test>= 0.1
            bool = 1;
            
        end
    else 
        if(test<0.1)   
            bool = 0;
            mat_res = [mat_res;res/moy];
            mat_accFinal{end+1,1}=mat_acc;
            mat_acc={};
            compt = compt + 1;
            res = 0;
            %p=0
            moy = 0;
        else 
            res = res + (lat_force(i)/abs(normal_force(i)));
            moy = moy + 1;
            mat_acc{end+1}=signal_detrend(i);
        end     
    end
end

%% Vibration power = somme + averaging of the 4 power spectrum

%convert cell to array 
a = cell2mat(mat_accFinal{1,1})';
b = cell2mat(mat_accFinal{2,1})'; %2eme ligne premiere colonne
c = cell2mat(mat_accFinal{3,1})';
d = cell2mat(mat_accFinal{4,1})';
e = cell2mat(mat_accFinal{5,1})';
f = cell2mat(mat_accFinal{6,1})';
g = cell2mat(mat_accFinal{7,1})';
h = cell2mat(mat_accFinal{8,1})';
i = cell2mat(mat_accFinal{9,1})';
j = cell2mat(mat_accFinal{10,1})';

% Band pass filter
n = 4; % Filter order 
lf = 20; % Low frequency cutoff for bandpass
hf = 400; % High frequency cutoff for bandpass

[B,A] = butter(n, [lf hf]/(fs/2),'bandpass');

filt_index1 = filtfilt(B,A,a);
filt_index2 = filtfilt(B,A,b);
filt_index3 = filtfilt(B,A,c);
filt_index4 = filtfilt(B,A,d);
filt_index5 = filtfilt(B,A,e);
filt_index6 = filtfilt(B,A,f);
filt_index7 = filtfilt(B,A,g);
filt_index8 = filtfilt(B,A,h);
filt_index9 = filtfilt(B,A,i);
filt_index10 = filtfilt(B,A,j);

%to do: convert cell to array, loop through all the files and draw the power spectrum
% x acceleration signal in time domain
%vibration power = sum(abs(x).^2)/length(x)
% equivalent RMS^2

v1 = sum(abs(filt_index1).^2)/length(filt_index1);
v2 = sum(abs(filt_index2).^2)/length(filt_index2);
v3 = sum(abs(filt_index3).^2)/length(filt_index3);
v4 = sum(abs(filt_index4).^2)/length(filt_index4);
v5 = sum(abs(filt_index5).^2)/length(filt_index5);
v6 = sum(abs(filt_index6).^2)/length(filt_index6);
v7 = sum(abs(filt_index7).^2)/length(filt_index7);
v8 = sum(abs(filt_index8).^2)/length(filt_index8);
v9 = sum(abs(filt_index9).^2)/length(filt_index9);
v10 = sum(abs(filt_index10).^2)/length(filt_index10);

v_value = [v1,v2,v3,v4,v5,v6,v7,v8,v9,v10];
vibration_power = mean(v_value);


%% cut signal by hand

plot([abs(filt(:,2)),signal_detrend])

% index for load("text_5_v2_p2.mat");  

% Index
index1 = signal_detrend(19500:41000);
index2 = signal_detrend(56000:80000);
index3 = signal_detrend(96000:123000);
index4 = signal_detrend(134000:161000);
index5 = signal_detrend(177000:203000);
index6 = signal_detrend(213000:238000);
index7 = signal_detrend(257000:281000);
index8 = signal_detrend(296000:323000);
index9 = signal_detrend(333000:360000);
index10 = signal_detrend(372000:401000);

% Band pass filter
n = 4; % Filter order 
lf = 20; % Low frequency cutoff for bandpass
hf = 400; % High frequency cutoff for bandpass

[B,A] = butter(n, [lf hf]/(fs/2),'bandpass');

filt_index1 = filtfilt(B,A,index1);
filt_index2 = filtfilt(B,A,index2);
filt_index3 = filtfilt(B,A,index3);
filt_index4 = filtfilt(B,A,index4);
filt_index5 = filtfilt(B,A,index5);
filt_index6 = filtfilt(B,A,index6);
filt_index7 = filtfilt(B,A,index7);
filt_index8 = filtfilt(B,A,index8);
filt_index9 = filtfilt(B,A,index9);
filt_index10 = filtfilt(B,A,index10);

% Power spectrum
p1 = pspectrum(filt_index1, fs);
p2 = pspectrum(filt_index2, fs);
p3 = pspectrum(filt_index3, fs);
p4 = pspectrum(filt_index4, fs);
p5 = pspectrum(filt_index5, fs);
p6 = pspectrum(filt_index6, fs);
p7 = pspectrum(filt_index7, fs);
p8 = pspectrum(filt_index8, fs);
p9 = pspectrum(filt_index9, fs);
p10 = pspectrum(filt_index10, fs);


%% Band pass filter (Butterworth)

n = 4; % Filter order 
lf = 20; % Low frequency cutoff for bandpass
hf = 400; % High frequency cutoff for bandpass

[B,A] = butter(n, [lf hf]/(fs/2),'bandpass');
%signal_detrend2 = filtfilt(B,A,signal_detrend);
filt_index1 = filtfilt(B,A,index1);
filt_index2 = filtfilt(B,A,index2);
filt_index3 = filtfilt(B,A,index3);

% Power spectrum
p = pspectrum(filt_index1, fs);

% Vibration power = somme + averaging of the 4 power spectrum



