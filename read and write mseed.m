% An example to use the rdmseed and mseed 

dt=0.02; % deltat 
% this data fitered by 10-20s
data=load('OUTPUT_FILES_CC/49_10_dat_syn_win');
obs=data(:,2);
syn=data(:,3);
% T0 is the start time,which is written by the matlab format convert the (Y,M,D) to 735918.105442823
T0=735918.105442823

%% use the mkmssed to write the mseed, Fs=1/dt
mkmseed('OY.DBO.LC.LXZ',obs,T0,1/dt)
% plot the obs data
O = rdmseed('OY.DBO.LC.LXZ.2014.319','plot');
hold on

%% use the mkmssed to write the mseed, Fs=1/dt
mkmseed('SY.DBO.LC.LXZ',syn,T0,1/dt)
% plot the syn data
S = rdmseed('SY.DBO.LC.LXZ.2014.319','plot');
