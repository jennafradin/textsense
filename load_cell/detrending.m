% s = data_force(20000:30000,7:7);
% s = squeeze(s);
% %plot(signal)
% 
% signal_de = detrend(s,1);
% plot(signal_de)

Fs = 44100;
filename = 'testtext.wav';
audiowrite(filename,signal_de,Fs);
