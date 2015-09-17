%  correlator.m -- May. 1998
%
%  FORMAT:		correlator
%_______________________________________________
%
%  This program computes a set of correlations between boxcars
%  and synaptic, hemo-delayed synaptic, and fmri activities for
%  a range of Tr's and lambda's.
%
%-------------------------------------------
%

%  Written:  1-98 by J. Bertelson.
%  Modified:  5-98 by B. Horwitz


load parameters

LL=[0.5 1 2 3 6];		% lambda values
Interval=[0.5 1 2];		% Tr values

correl1m=[];
correl2m=[];
correl3m=[];

for ii=1:length(LL)
	for jj=1:length(Interval)
		lambda=LL(ii);
		Tr=Interval(jj);
		disp(['lambda=',num2str(lambda),'  Tr=',num2str(Tr)]);
		corrbox2
		inputinit=1;
		correl1m=[correl1m; lambda Tr correl1];
		correl2m=[correl2m; lambda Tr correl2];
		correl3m=[correl3m; lambda Tr correl3];
	end
end

save correlresults correl1m correl2m correl3m

disp(' ');
disp('Analysis is complete');
disp(' ');