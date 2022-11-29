clear; close all;

%======Diethyl Ether=============
D_diEther_75 = 2.16e-11;
D_diEther_50 = 6.23e-10;
D_diEther_25 = 3.32e-9;
D_diEther_0 = 8.78e-09;

octanol_75 = 1.49e-09;
octanol_50 = 2.09e-10;
octanol_25 = 4.50e-12;
octanol_0 = 1.98e-10;

T_diEther = [1.428 0.952 0.476 0];

D_octanol = [octanol_75, octanol_50, octanol_25, octanol_0];
r_diEther = [D_diEther_75 D_diEther_50 D_diEther_25 D_diEther_0];

figure;
hold on;
title('Diffusion of Diethyl Ether vs. Octanol')
xlabel('Number Density of octanol')
ylabel('Diffusion coefficent (m^2/s)')
scatter(T_diEther,r_diEther,"filled");
scatter(T_diEther,D_octanol,"filled");
errorbar(T_diEther,r_diEther,zeros(1,4)+5e-10,'o');
errorbar(T_diEther,D_octanol,zeros(1,4)+5e-10,'o');
legend('Diethyl ether','Octanol');
hold off;

%======DCM================================
D_DCM_75 = 1.53e-09;
D_DCM_50 = 8.11e-09;
D_DCM_25 = 1.53e-08;

octanol_75 = 3.67e-09;
octanol_50 = 2.24e-09;
octanol_25 = 5.39e-10;

T_DCM = [1.428 0.952 0.476];
D_octanol = [octanol_75, octanol_50, octanol_25];
r_DCM = [D_diEther_75 D_diEther_50 D_diEther_25];

figure;
hold on;
title('Diffusion of DCM vs. Octanol')
xlabel('Number Density of octanol')
ylabel('Diffusion coefficent (m^2/s)')
scatter(T_DCM,r_DCM,"filled");
scatter(T_DCM,D_octanol,"filled");
errorbar(T_DCM,r_DCM,zeros(1,3)+2e-10,'o');
errorbar(T_DCM,D_octanol,zeros(1,3)+2e-10,'o');
legend('DCM','Octanol');
hold off;

%=======Acetone=================================
D_acetone_75 = 7.27e-10;
D_acetone_50 = 3.13e-09;
D_acetone_25 = 8.81e-09;
D_acetone_0 = 1.25e-08;

octanol_75 = 3.44e-09;
octanol_50 = 1.76e-09;
octanol_25 = 7.74e-10;


D_octanol = [octanol_75, octanol_50, octanol_25, octanol_0];
T_acetone = [1.428 0.952 0.476 0];
r_acetone = [D_acetone_75 D_acetone_50 D_acetone_25 D_acetone_0];

figure;
hold on;
title('Diffusion of acetone vs. Octanol')
xlabel('Number Density of octanol')
ylabel('Diffusion coefficent (m^2/s)')
scatter(T_acetone,r_acetone,"filled");
scatter(T_acetone,D_octanol,"filled");
errorbar(T_acetone,r_acetone,zeros(1,4)+5e-10,'o');
errorbar(T_acetone,D_octanol,zeros(1,4)+5e-10,'o');
legend('Acetone','Octanol');
hold off;





