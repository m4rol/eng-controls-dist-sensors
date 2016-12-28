%DATA FILTERING

stairs(data__laser_l_aft_height,'g');
hold on 

FiltHamp = hampel(data__laser_l_aft_height,150);

plot(FiltHamp);


division = 24;
divCoef = ones(1, division)/division; %1x24

smoothFiltHamp = filter(divCoef, 1, FiltHamp);
plot(smoothFiltHamp);

fDelay = (length(coeff24hMA)-1)/2;
plot(days,tempC, ...
     days-fDelay/24,avg24hTempC)

legend('Raw Data','via Hamper','smoothFiltHamp','location','best')
xlabel('Samples')
ylabel('Distance [mm]')