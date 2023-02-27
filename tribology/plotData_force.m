function plotData_force(src,event)
global tempData_force;
global data_force
global av_bias
global range_low range_high
global limit_high limit_low
if(isempty(tempData_force))
    tempData_force = [];
end

% GainMatrix_nano_8 =[-0.005989808589   -0.005876583047   -0.011909324676   -0.802710950375   0.012650342658   0.800600707531;
%     0.031047206372    0.986323118210   -0.018139054999   -0.474455505610  -0.006403145380  -0.464542806149;
%     0.913727223873    0.020085288212    0.969177305698    0.010251066647   0.930512726307  -0.000942904735;
%     0.201210528612    5.973792552948    5.232494831085   -2.807395935059  -5.291256904602  -2.812006950378;
%     -5.690430164337   -0.110846824944    3.211458444595    4.915808677673   2.883349180222  -4.854378223419;
%     0.084212586284    3.630491495132    0.081313274801    3.492706298828   0.069292128086   3.502776622772];

GainMatrix_nano_8 =[-0.00252   0.00054   0.02640  -0.80888   0.02137   0.80805;
    0.00687   0.96970   0.01812  -0.47422  -0.00977  -0.46834;
    0.92216  -0.01035   0.93249   0.02884   0.95696  -0.00782;
    -0.04997   5.92544   5.20977  -2.73030  -5.37917  -2.83535;
    -5.85174   0.05950   2.73232   5.01783   3.00091  -4.93065;
    0.05487   3.46047  -0.10179   3.39190   0.04328   3.38251];

% load('FT25490.mat');
% GainMatrix_nano_8 = C;

data_new = (GainMatrix_nano_8*(event.Data(:,1:6)-av_bias(1:6))')';
data_new2 = (event.Data(:,7:7));   % Accelerometer and force sensor
 
%data_new2 = (event.Data(:,6:6));   % Force sensor only

data_new = [data_new,data_new2]; % Merge force sensor and accelerometer data
%data_new = (data_new);

% add the forces from the two sensors 

%     plot(event.TimeStamps,data_new(:,1), 'k'); hold on;
%     plot(event.TimeStamps,data_new(:,2), 'r')
%     plot(event.TimeStamps,data_new(:,3), 'b')
% 
%     hold on

tempData_force = [tempData_force;data_new];
data_force = tempData_force;

end