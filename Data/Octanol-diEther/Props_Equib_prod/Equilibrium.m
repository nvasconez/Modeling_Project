clear; close all;

properties = readmatrix ('Properties_equib_293k.txt');
press = properties(:,4);
E = properties(:,7);
x = (10501000:5000:14500000);

for i=1:799
    avg_press(i+1) = (press(i+1) + press(i)) /2;
end

figure;
plot(x,avg_press);
title('Pressure equilibration 293k octanol');
xlabel('Step');
ylabel('Pressure');

for i=1:799
    avg_E(i+1) = (E(i+1) + E(i)) /2;
end

figure;
plot(x,avg_E);
title('Energy equilibration 293k octanol');
xlabel('Step');
ylabel('Energy');

avg_press = sum(avg_press) ./ length(avg_press)
avg_E = sum(avg_E) ./ length(avg_E)