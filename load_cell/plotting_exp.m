clc;
clear all;
close all;

%load data

load("text_24_t3.mat");
plot(data_force);

%% check channels
for i = 1:7
    subplot(7,1,i);
    plot(data_force(:,i));
    caption = sprintf("Channel #%d",i);
    title(caption,"Fontsize",10);
end

%% plot normal/lateral force ??

normal_force = data_force(:,3);
lat_force = sqrt(data_force(:,1).^2+data_force(:,2).^2);

figure;
plot([normal_force,lat_force]);