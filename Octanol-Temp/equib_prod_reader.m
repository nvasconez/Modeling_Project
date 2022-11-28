properties = readmatrix ('Properties_prod_323k.txt');
press = properties(:,4);
E = properties(:,7);
x = (1:30);

for i=1:29
    avg_press(i+1) = (press(i+1) + press(i)) /2;
end

figure;
plot(x,avg_press);
title('Pressure production 323k octanol');
xlabel('Step');
ylabel('Pressure');

for i=1:29
    avg_E(i+1) = (E(i+1) + E(i)) /2;
end

figure;
plot(x,avg_E);
title('Energy production 323k octanol');
xlabel('Step');
ylabel('Energy');

avg_press = sum(avg_press) ./ length(avg_press)
avg_E = sum(avg_E) ./ length(avg_E)
