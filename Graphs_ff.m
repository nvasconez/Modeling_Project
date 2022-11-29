clear; close all;

ua_1 = 2.28e-10;
ua_2 = 2.51e-10;
ua_3 = 3.18e-10;
ua_4 = 3.37e-10;
ua_5 = 4.07e-10;
ua_6 = 4.98e-10;

aa_1 = 1.52e-10;
aa_2 = 1.98e-10;
aa_3 = 2.23e-10;
aa_4 = 2.26e-10;
aa_5 = 3.07e-10;
aa_6 = 5.89e-10;

T = [293 310 323 333 360 383];

D_ua = [aa_1 aa_2 aa_3 aa_4 aa_5 aa_6];
D_aa = [ua_1 ua_2 ua_3 ua_4 ua_5 ua_6];

figure;
hold on;
title('Diffusion of octanol in All-atom vs. United at varying Temerature')
xlabel('Temperature')
ylabel('Diffusion coefficent (m^2/s)')
scatter(T,D_ua,'filled');
scatter(T,D_aa,'filled');
errorbar(T,D_ua,zeros(1,6)+2.98e-11,'o');
errorbar(T,D_aa,zeros(1,6)+2.27e-11,'o');
legend('united','all-atom');
hold off;