
% clean the forces and etc

duration_bias = 2;  % your choice in seconds
duration = 40; % duration of acquisition (original value: 40)
global data_force tempData_force data_bias tempData_bias av_bias

%% Create DAQ Session

tempData_force = [];
data_force = [];
av_bias = [];
data_bias = [];

s_bias = daq.createSession('ni');
s_bias.DurationInSeconds = duration_bias;

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



s_bias.Rate=2000;


s_force = daq.createSession('ni');
%s_force.DurationInSeconds = duration;
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
addAnalogInputChannel(s_force,'Dev1', 16, 'Voltage');  
ch.TerminalConfig = 'Diff';



s_force.Rate=2000;

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
 
% normal_force = data_force(:,3);%-av_bias(1);
% lat_force = sqrt(data_force(:,1).^2+data_force(:,2).^2);%-av_bias(3); Fy seems the second channel
% 
% figure;
% plot([normal_force,lat_force]);

% tempData_force = [];

%% Test the channels

% figure()
% subplot(6,1,1);
% plot(data_force(:,1));
% subplot(6,1,2);
% plot(data_force(:,2));
% subplot(6,1,3);
% plot(data_force(:,3));
% subplot(6,1,4);
% plot(data_force(:,4));
% subplot(6,1,5);
% plot(data_force(:,5));
% subplot(6,1,6);
% plot(data_force(:,6));



