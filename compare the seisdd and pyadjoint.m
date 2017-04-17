%% by chao,2017-4-17
% to vetify the adjoint source using two different package: seisDD and Pyadjoint 

dt=0.02;
data=load('OUTPUT_FILES_CC/49_10_dat_syn_win');
adj_mt=load('OUTPUT_FILES_MT/49_10_adj_MT_win');
adj_cc=load('OUTPUT_FILES_CC/49_10_adj_CC_win');
adj_pymt=load('../../Multitaper Misfit');
adj_pycc=load('../../Cross Correlation Traveltime Misfit');

fig=figure(1)
subplot(3,1,1)
plot(data(:,2))
hold on
plot(data(:,3),'r')
legend('syn','obs','location','eastoutside')

% the adjoint source for MT
subplot(3,1,2)
plot(adj_mt(:,2))
hold on
plot(adj_pymt,'r')
legend('seisdd','pyadjoint','location','eastoutside')
title('adj-mt')

% the adjoint source for CC
subplot(3,1,3)
plot(adj_cc(:,2))
hold on
plot(adj_pycc,'r')
title('adj-cc')
legend('seisdd','pyadjoint','location','eastoutside')
saveas(fig,'adjoint-cc-mt-trace','pdf')
