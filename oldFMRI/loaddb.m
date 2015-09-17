% loaddb.m -- Feb. 1998
%
%  This program loads the relevant data from simulations of 
%  D&B experiments #1 and 2.
%  Tr and lambda must be specified before running this program.
%  (this program to be used with plotdb1.m and plotdb2.m)
%
%  User should ensure that this program refers to the correct directories

% Experiment #1, two stimuli (5 sec interval)
chdir /u1/optic/fmri/dbck1/dbck1_60			%<-- check here
load synact			
load parameters 		
disp('     loading:  2 stimuli, 5 sec interval')
fmrigen
synact41=synact4; act41=act4; fmriact21=fmriact2;

% Experiments #1 and 2, one stimulus
chdir /u1/optic/fmri/dbck2/dbck21_60		%<-- check here
load synact 		
load parameters		
disp('     loading:  1 stimulus')
fmrigen
synact421=synact4; act421=act4; fmriact221=fmriact2;

% Experiment #2, two stimuli (2 sec interval)
chdir /u1/optic/fmri/dbck2/dbck22_60		%<-- check here
load synact     
load parameters
disp('     loading:  2 stimuli, 2 sec interval')
fmrigen
synact422=synact4; act422=act4; fmriact222=fmriact2;

synactdlong=synact41-synact421;
actdlong=act41-act421;
fmriactdlong=fmriact21-fmriact221; 

synactdlong(:,1)=Tsyn4;
actdlong(:,1)=Tsyn4;
fmriactdlong(:,1)=Tmr2;

synactdshort=synact422-synact421;
actdshort=act422-act421;
fmriactdshort=fmriact222-fmriact221; 

synactdshort(:,1)=Tsyn4;
actdshort(:,1)=Tsyn4;
fmriactdshort(:,1)=Tmr2;