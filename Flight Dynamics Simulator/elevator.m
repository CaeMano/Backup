%% SIMULATION
% Writing initial inputs vector.
inputs = getinputstruct(opreport);                                          % Reads the model inputs
utin = zeros(size(inputs.signals,2),1);                                     % initialize with zeros the inputs vector - this is optional but reduces computational time of the code.
for i = 1:size(inputs.signals,2)
    utin(i,:) = inputs.signals(i).values;                                   % Creates a vector with the trimmed values for the inputs.
end

% Total simulation time - [s];
TF=300;
% Time data for the input;
t = [0 5 5.01 7 7.01 9.0 9.01 TF];                                          % This vector can be any kind of time vector to create the input.

% Create an input vector of the same size as t;
%First line is the time stamp itself (simulink coding!)
ut = zeros(size(t,2),size(inputs.signals,2));                               % initialize with zeros the inputs vector - this is optional but reducis computational time of the code.
for i=1:size(t,2)
    ut(i,1) = t(i);                                                         % Simulink default. The first line is the time vector.
    for j=1:size(inputs.signals,2)
        ut(i,j+1) = utin(j);                                                % Initial input vectors with the same size as t.
    end
end

% ELEVATOR 
delta = 1;                                                                 %amplitude [deg]
%Control Surface index
for i=1:size(opreport.Inputs,1)
    intr{i,1} = opreport.Inputs(i).Block;                                   % Create a structure with the names of the inputs
end
in_ind = [1:size(opreport.Inputs,1)];                                       % Create a vector with the indices of the inputs.
ind_control = in_ind(logical(strcmp('ACFT_cae/Elevator_deg',intr)));            % Finds the position of the Elevator input.

% input command with the same size as t; You can draw anything here.
manobra = 1; % 0 - doublet / 1 -pulso
if manobra == 0
    ut(:,ind_control+1) = [ut(1,ind_control+1) ut(1,ind_control+1) (ut(1,ind_control+1)-delta) (ut(1,ind_control+1)-delta) (ut(1,ind_control+1)+delta) (ut(1,ind_control+1)+delta) ut(1,ind_control+1) ut(1,ind_control+1)]';
else
    ut(:,ind_control+1) = [ut(1,ind_control+1) ut(1,ind_control+1) (ut(1,ind_control+1)+delta) (ut(1,ind_control+1)+delta) (ut(1,ind_control+1)) (ut(1,ind_control+1)) ut(1,ind_control+1) ut(1,ind_control+1)]';
end
%Simulation command
[out] = sim('ACFT_cae',TF,simset('InitialState',getstatestruct(opreport),'Solver','ode4','FixedStep',0.01),ut);

tout = out.tout ;

 yout(:,1) = out.yout{1}.Values.Data ;
 yout(:,2) = out.yout{2}.Values.Data ;
 yout(:,3) = out.yout{3}.Values.Data ;
 yout(:,4) = out.yout{4}.Values.Data ;
 yout(:,5) = out.yout{5}.Values.Data ;
 yout(:,6) = out.yout{6}.Values.Data ;
 yout(:,7) = out.yout{7}.Values.Data ;
 yout(:,8) = out.yout{8}.Values.Data ;
 yout(:,9) = out.yout{9}.Values.Data ;
 yout(:,10) = out.yout{10}.Values.Data ;
 yout(:,11) = out.yout{11}.Values.Data ;
 yout(:,12) = out.yout{12}.Values.Data ;
 yout(:,13) = out.yout{13}.Values.Data ;
 yout(:,14) = out.yout{14}.Values.Data ;
 yout(:,15) = out.yout{15}.Values.Data ;
 yout(:,16) = out.yout{16}.Values.Data ;
 yout(:,17) = out.yout{17}.Values.Data ;
 yout(:,18) = out.yout{18}.Values.Data ;
 yout(:,19) = out.yout{19}.Values.Data ;
 yout(:,20) = out.yout{20}.Values.Data ;
 yout(:,21) = out.yout{21}.Values.Data ;
 yout(:,22) = out.yout{22}.Values.Data ;
 yout(:,23) = out.yout{23}.Values.Data ;
 yout(:,24) = out.yout{24}.Values.Data ;
 yout(:,25) = out.yout{25}.Values.Data ;


%% PLOT

% Lendo os outputs
for i=1:size(opreport.Outputs,1)
    outr{i,1} = opreport.Outputs(i).Block;     % Criando uma estrutura com os nomes dos outputs.
end
out_ind = 1:size(opreport.Outputs,1);          % Criando vetor com os índices dos outputs.

cor = ["#E32636" "#0047AB"];
estilo = ["-" "-."];

set(groot, 'defaultAxesBox', 'on');

% figure(1);
% plot(t,ut(:,ind_control+1),"LineWidth",2, "LineStyle",estilo(1), "Color",cor(1));
% grid minor;
% xlabel('Tempo [s]',"Interpreter","latex");
% ylabel('Deflex\~ao de profundor [$^\circ$]',"Interpreter","latex");
% ylim([min(ut(:,ind_control+1))-0.1, max(ut(:,ind_control+1))+0.1]);
% 
% figure(2);
% hold on;
% plot(tout,yout(:,out_ind(logical(strcmp('ACFT_cae_marcos/Alpha_deg',outr)))), "LineWidth", 2, 'Color', cor(1), 'LineStyle', estilo(1)); ...
% plot(tout,yout(:,out_ind(logical(strcmp('ACFT_cae/Theta_deg',outr)))), "LineWidth", 2, 'Color', cor(2), 'LineStyle', estilo(2));
% grid minor;
% xlabel('Tempo [s]',"Interpreter","latex");
% ylabel('\^Angulos [$^\circ$]',"Interpreter","latex");
% legend("$\alpha$","$\theta$","Interpreter","latex");
% ylim([min(yout(:,out_ind(logical(strcmp('ACFT_cae/Theta_deg',outr)))))-0.5, max(yout(:,out_ind(logical(strcmp('ACFT_cae/Theta_deg',outr)))))+0.5]);
% 
% figure(3);
% hold on
% plot(tout,yout(:,out_ind(logical(strcmp('ACFT_cae/u_mps',outr)))), "LineWidth",2, "LineStyle",estilo(1), "Color",cor(1));
% plot(tout,yout(:,out_ind(logical(strcmp('ACFT_cae/w_mps',outr)))), "LineWidth",2, "LineStyle",estilo(2), "Color",cor(2));
% grid minor;
% xlabel('Tempo [s]',"Interpreter","latex");
% ylabel('Velocidades lineares [m/s]',"Interpreter","latex");
% legend("u","w","Interpreter","latex");
% 
% figure(4);
% plot(tout,yout(:,out_ind(logical(strcmp('ACFT_cae/q_degps',outr)))),"LineWidth",2, "LineStyle",estilo(1), "Color",cor(1));
% grid minor;
% xlabel('Tempo [s]',"Interpreter","latex");
% ylabel('q [$^\circ$/s]',"Interpreter","latex");
% ylim([min(yout(:,out_ind(logical(strcmp('ACFT_cae/q_degps',outr)))))-1, max(yout(:,out_ind(logical(strcmp('ACFT_cae/q_degps',outr)))))+1]);
% 
% figure(5);
% plot(tout,yout(:,out_ind(logical(strcmp('ACFT_cae/Altitude_m',outr)))),"LineWidth",2, "LineStyle",estilo(1), "Color",cor(1)); 
% grid minor;
% xlabel('Tempo [s]',"Interpreter","latex");
% ylabel('Altitude [m]',"Interpreter","latex");
% ylim([min(yout(:,out_ind(logical(strcmp('ACFT_cae/Altitude_m',outr)))))-1, max(yout(:,out_ind(logical(strcmp('ACFT_cae/Altitude_m',outr)))))+1]);


subplot(421);plot(t,ut(:,ind_control+1)); xlabel('Tempo [s]',"Interpreter","latex",'Fontsize',8);ylabel('$\delta_e$ [$^\circ{}$]', "Interpreter","latex",'FontSize',8); grid on; grid minor; box on

subplot(422);plot(tout,yout(:,out_ind(logical(strcmp('ACFT_cae/u_mps',outr))))); xlabel('Tempo [s]',"Interpreter","latex",'Fontsize',8);ylabel('u [m/s]', "Interpreter","latex",'Fontsize',8); grid on; grid minor; box on
subplot(423);plot(tout,yout(:,out_ind(logical(strcmp('ACFT_cae/w_mps',outr))))); xlabel('Tempo [s]',"Interpreter","latex",'Fontsize',8);ylabel('w [m/s]', "Interpreter","latex",'Fontsize',8); grid on; grid minor; box on

subplot(424);plot(tout,yout(:,out_ind(logical(strcmp('ACFT_cae/Alpha_deg',outr))))); xlabel('Tempo [s]',"Interpreter","latex",'Fontsize',8);ylabel('$\alpha$ [$^\circ{}$]', "Interpreter","latex",'Fontsize',8); grid on; grid minor; box on
subplot(425);plot(tout,yout(:,out_ind(logical(strcmp('ACFT_cae/Theta_deg',outr))))); xlabel('Tempo [s]', "Interpreter","latex",'Fontsize',8);ylabel('$\theta$ [$^\circ{}$]', "Interpreter","latex",'Fontsize',8); grid on; grid minor; box on

subplot(426);plot(tout,yout(:,11));xlabel('Tempo [s]', "Interpreter","latex",'Fontsize',8);ylabel('q [$^\circ{}/s$]', "Interpreter","latex",'Fontsize',8); grid on; grid minor; box on

% subplot(426);plot(tout,yout(:,out_ind(logical(strcmp('ACFT_cae/q_degps',outr))))); xlabel('Tempo [s]', "Interpreter","latex",'Fontsize',8);ylabel('q [$^\circ{}/s$]', "Interpreter","latex",'Fontsize',8); grid on; grid minor; box on
subplot(427);plot(tout,yout(:,out_ind(logical(strcmp('ACFT_cae/Altitude_m',outr))))); xlabel('Tempo [s]',"Interpreter","latex",'Fontsize',8);ylabel('Altitude [m]', "Interpreter","latex",'Fontsize',8); grid on; grid minor; box on