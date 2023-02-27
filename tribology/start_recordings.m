%%

devs = daq.getDevices;

%% Clean the forces and etc

duration_bias = 4;  % your choice in seconds (4 sample per s for 40s)
duration = 60; % duration of acquisition (30)
global data_force tempData_force data_bias tempData_bias av_bias


%% Create DAQ Session

tempData_force = [];
data_force = [];
av_bias = [];
data_bias = [];

s_bias = daq.createSession('ni'); %create session national instruments
s_bias.DurationInSeconds = duration_bias;

%set(s_bias.channel(1))= info on channel 1, what can i change

addAnalogInputChannel(s_bias,'Dev1', 0, 'Voltage');  % choose DEV number in your PC
ch.TerminalConfig = 'Diff';
addAnalogInputChannel(s_bias,'Dev1', 1, 'Voltage');  
ch.TerminalConfig = 'Diff';
addAnalogInputChannel(s_bias,'Dev1', 2, 'Voltage');  
ch.TerminalConfig = 'Diff';
addAnalogInputChannel(s_bias,'Dev1', 3, 'Voltage');  
ch.TerminalConfig = 'Diff';
addAnalogInputChannel(s_bias,'Dev1', 4, 'Voltage');  
ch.TerminalConfig = 'Diff';
addAnalogInputChannel(s_bias,'Dev1', 5, 'Voltage');  
ch.TerminalConfig = 'Diff';
addAnalogInputChannel(s_bias,'Dev1', 16, 'Voltage');  
ch.TerminalConfig = 'Diff';

%addAnalogInputChannel(s_bias,"Dev1",16,"Accelerometer");  


 s_bias.Rate=10000; % sampling rate paper Vardar
% test 44100

s_force = daq.createSession('ni');
s_force.DurationInSeconds = duration;
s_force.IsContinuous = true;

addAnalogInputChannel(s_force,'Dev1', 0, 'Voltage');  % choose DEV number in your PC
ch.TerminalConfig = 'Diff';
addAnalogInputChannel(s_force,'Dev1', 1, 'Voltage');  
ch.TerminalConfig = 'Diff';
addAnalogInputChannel(s_force,'Dev1', 2, 'Voltage');  
ch.TerminalConfig = 'Diff';
addAnalogInputChannel(s_force,'Dev1', 3, 'Voltage');  
ch.TerminalConfig = 'Diff';
addAnalogInputChannel(s_force,'Dev1', 4, 'Voltage');  
ch.TerminalConfig = 'Diff';
addAnalogInputChannel(s_force,'Dev1', 5, 'Voltage');  
ch.TerminalConfig = 'Diff';
addAnalogInputChannel(s_force,'Dev1', 16, 'Voltage');   % accelerometer channel
ch.TerminalConfig = 'Diff';

%addAnalogInputChannel(s_force,"Dev1",16,"Accelerometer");  

%set sensitivity
% s_force.channels(16) = 0.01; check datasheet



s_force.Rate=10000;

%% COLLECT DATA FOR BIAS 

lh = s_bias.addlistener('DataAvailable',@plotData_bias);   % to obtain force data in background

s_bias.startBackground();
pause(duration_bias)
stop(s_bias)
release(s_bias)
delete(lh)
clear lh

bias = data_bias;
tempData_bias = []; 
clear data_bias

beep
disp('BIAS COLLECTED');

av_bias = mean(bias);

% %% CREATE THE ONLINE PLOT
% % 
% 
% time = 0:1e-5:(duration-1e-5);
% limit_low = limit_low*ones(length(time),1);
% limit_high = limit_high*ones(length(time),1);
% 
% plot(time, limit_low);
% hold on
% plot(time, limit_high);
% ylim([range_low range_high])
% ylabel('Applied Normal Force (N)')
% xlabel('Time')
% x0=500;
% y0=50;
% width=1000;
% height=400;
% set(gcf,'units','points','position',[x0,y0,width,height])
% 
% hold on

%% START COLLECTING ACTUAL DATA

lh = s_force.addlistener('DataAvailable',@plotData_force);   % add listener 
    
s_force.startBackground()
%pause(duration)                    
%stop(s_force)
%release(s_force)
%delete(lh)
%clear lh

%% GET NORMAL AND LATERAL FORCES
  
%force_actual = convertForce(data_force,av_bias,duration*s_force.Rate);
 
normal_force = data_force(:,3);%-av_bias(1);
lat_force = sqrt(data_force(:,1).^2+data_force(:,2).^2);%-av_bias(3); Fy seems to be the second channel

figure;
plot([normal_force,lat_force]);

% tempData_force = [];

%% Test the channels

% for i = 1:7
%     subplot(7,1,i);
%     plot(data_force(:,i));
%     caption = sprintf("Channel #%d",i);
%     title(caption,"Fontsize",10);
% end


%% Start acquisition
% [data,time] = s_bias.startForeground() ;
% plot(time,data_force);
% grid on
% xlabel("Time (s)");
% ylabel("N");
% s_biais.release();

