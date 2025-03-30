clc;
close all;
clear;

% Load airfoil file
X = load('ms1-0313.dat');

% start with a 4-digit NACA airfoil 
m = mfoil('coords',X, 'npanel',200);

% State input
alpha = 0:25;
Reynolds = 2.1e6;
Mach =   0.15 ;

% Calculation loop
figure(); hold on; grid on; grid minor; xlabel('alpha'); ylabel('CL');
cl =[]; cd =[]; cm =[];
for i=1:length(alpha)
    try
        % newton solution convergence parameters
        m.param.rtol = 1.0e-6;
        m.param.niglob = 200;
        % Set alpha, reynolds and mach number
        m.setoper('alpha',alpha(i),'Re',Reynolds, 'Ma',Mach);
        % Solve
        m.solve;
        % If convergence is achieved, store CD, CL, CM
        if m.glob.conv == 1
            cl(end+1) = m.post.cl;
            cd(end+1) = m.post.cd;
            cm(end+1) = m.post.cm;
            plot(alpha(i), m.post.cl, 'ok'); drawnow; hold on;
        end
    catch
    end
end

% plot solution details
% m.plot_distributions

mfoil_polars.Reynolds = Reynolds ;
mfoil_polars.Mach = Mach ;
mfoil_polars.alpha = alpha ;
mfoil_polars.CL = cl ;
mfoil_polars.CD = cd ;
mfoil_polars.CM = cm ; 
