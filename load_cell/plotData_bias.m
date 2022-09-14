function plotData_bias(src,event)
    global tempData_bias;
    global data_bias 
    if(isempty(tempData_bias))
         tempData_bias = [];
     end
     %plot(event.TimeStamps, event.Data)
     tempData_bias = [tempData_bias;event.Data];
     data_bias = tempData_bias;
end