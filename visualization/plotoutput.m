%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% plotoutput.m 
%
% Plot output files of neuronals units for auditory processing 
%
% Created by Fatima Husain
%
% Modified by Antonio Ulloa
%
% Thu Feb 14 13:53:30 EST 2002
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%---------------------------------------------------------------------
% Define module units to be plotted
%---------------------------------------------------------------------
yMin = 40;
yMax = 50;
xMin =  1;
xMax =350;
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Define position and size of first window displayed, and shift for
% succesive windows
% The origin is relative to the lower right-hand corner of window
%---------------------------------------------------------------------
originX =   5;
width   = 310;
originY = 800;
height  = 150;
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Other settings for plotting
%---------------------------------------------------------------------
lW=1;
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot MGN units
%---------------------------------------------------------------------
figure(1)
set(1, 'Position', [originX originY width height]);
set(1, 'Name', 'MGN', 'numberTitle', 'off' );
originY=originY-height; 
load mgns.out
for i=1:81,
  mgn(:,i) = i+mgns(:,i);
end
plot(mgn(xMin:xMax,yMin:yMax),'k', 'linewidth', lW);
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot Excitatory up-selective units in Ai
%---------------------------------------------------------------------
figure(2);
set(2, 'Position', [originX originY width height]);
set(2, 'Name', 'EAiu', 'numberTitle', 'off' );
originY=originY-height; 
load ea1u.out
for i=1:81,
  e1u(:,i) = i+ea1u(:,i);
end
plot(e1u(xMin:xMax,yMin:yMax),'k', 'linewidth', lW);
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot Excitatory down-selective units in Ai
%---------------------------------------------------------------------
figure(3)
set(3, 'Position', [originX originY width height]);
set(3, 'Name', 'EAid', 'numberTitle', 'off' );
originY=originY-height; 
load ea1d.out
for i=1:81,
  e1d(:,i) = i+ea1d(:,i);
end
plot(e1d(xMin:xMax,yMin:yMax),'k', 'linewidth', lW);
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot Excitatory up-selective units in Aii
%---------------------------------------------------------------------
figure(4);
set(4, 'Position', [originX originY width height]);
set(4, 'Name', 'EAiiu', 'numberTitle', 'off' );
originY=originY-height; 
load ea2u.out
for i=1:81,
  e2u(:,i) = i+ea2u(:,i);
end
plot(e2u(xMin:xMax,yMin:yMax),'k', 'linewidth', lW);
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot Excitatory down-selective units in Aii
%---------------------------------------------------------------------
figure(5);
set(5, 'Position', [originX originY width height]);
set(5, 'Name', 'EAiid', 'numberTitle', 'off' );
originY=originY-height; 
load ea2d.out
for i=1:81,
  e2d(:,i) = i+ea2d(:,i);
end
plot(e2d(xMin:xMax,yMin:yMax),'k', 'linewidth', lW);
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot Excitatory contour-selective units in Aii
%---------------------------------------------------------------------
figure(6);
set(6, 'Position', [originX originY width height]);
set(6, 'Name', 'EAiic', 'numberTitle', 'off' );
originY=originY-height; 
load ea2c.out
for i=1:81,
  e2c(:,i) = i+ea2c(:,i);
end
plot(e2c(xMin:xMax,yMin:yMax),'k', 'linewidth', lW);
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot STG units (excitatory)
%---------------------------------------------------------------------
figure(7);
set(7, 'Position', [originX originY width height]);
set(7, 'Name', 'ESTG', 'numberTitle', 'off' );
originY=originY-height; 
load estg.out
for i=1:81,
  estg(:,i) = i+estg(:,i);
end
plot(estg(xMin:xMax,yMin:yMax),'k', 'linewidth', lW);
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot C units (excitatory)
%---------------------------------------------------------------------
figure(8);
set(8, 'Position', [originX originY width height]);
set(8, 'Name', 'C', 'numberTitle', 'off' );
originY=originY-height; 
load exfs.out
for i=1:81,
  exfs(:,i) = i+exfs(:,i);
end
plot(exfs(xMin:xMax,yMin:yMax),'k', 'linewidth', lW);
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot D1 units (excitatory)
%---------------------------------------------------------------------
figure(9);
set(9, 'Position', [originX originY width height]);
set(9, 'Name', 'D1', 'numberTitle', 'off' );
originY=originY-height; 
load efd1.out
for i=1:81,
  efd1(:,i) = i+efd1(:,i);
end
plot(efd1(xMin:xMax,yMin:yMax),'k', 'linewidth', lW);
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot D2 units (excitatory)
%---------------------------------------------------------------------
figure(10);
set(10, 'Position', [originX originY width height]);
set(10, 'Name', 'D2', 'numberTitle', 'off' );
originY=originY-height; 
load efd2.out
for i=1:81,
  efd2(:,i) = i+efd2(:,i);
end
plot(efd2(xMin:xMax,yMin:yMax),'k', 'linewidth', lW);
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot R units (excitatory)
%---------------------------------------------------------------------
figure(11);
set(11, 'Position', [originX originY width height]);
set(11, 'Name', 'R', 'numberTitle', 'off' );
originY=originY-height; 
load exfr.out 
for i=1:81,
  exfr(:,i) = i+exfr(:,i);
end
plot(exfr(xMin:xMax,yMin:yMax),'k', 'linewidth', lW);
%---------------------------------------------------------------------




