%% MASS PROPERTIES
Ixx = 155.52;
Iyy =  256.23 ;
Izz = 321.89 ;
Inertia = [Ixx 0 0; 0 Iyy 0; 0 0 Izz];  % Tensor de inércias [kg.m²]  
                                                                  
%% GRAVITY                                                               
g = 9.80665;                            % Aceleração da gravidade [m/s²]

%% ENGINE DATA
V_reference_mps = velocidade(end);                 % Velocidade de referência [m/s]
rho_reference_kgpm3 = 1.225;           % Densidade de referência [m/s]
nv = -1;
nrho = 0.75;
alfaf_deg = 0;                          % Ângulo do motor [deg]
xf_m = 2.02 ;                           % Distância em x do motor ao CG (+ is FWD of the CG) [m]
zf_m = -0.1418 ;                         % Distância em z do motor ao CG (+ is below the ref. plane) [m]
% Tmax = 308*745.7/V_reference_mps;       % Tração máxima [N]
% Tmax = 137.8575*745/V_reference_mps ;
Tmax = 308.3469 ;

%% AIRCRAFT DATA
b = 5.76 ;                              % Envergadura da asa [m]
cma = 0.84 ;                            % Corda média aerodinâmica [m]
S = 4.74 ;                              % Área da asa [m²]

%% AERODYNAMIC DATA

% DERIVADAS DO COEFICIENTE DE SUSTENTAÇÃO
CL0 = 0.20539;
CL_alpha = 4.865880;
CL_AlphaDot = 0;
CL_q = 8.688618 ;
CL_elev = 0.006400*180/pi;

% DERIVADAS DO COEFICIENTE DE ARRASTO 
CD0 = 0.01533;
CD_alpha = 0;
CD_elev = 0.000010*180/pi;

% CD0 = 0.0057 ;
% CD_alpha = 0 ;
% CD_elev = 0 ; 

% DERIVADAS DO COEFICIENTE DE FORÇA LATERAL
CY_beta = -0.191039;
CY_p = 0.023084 ;
CY_r = 0.173621;
CY_ail = -0.000189*180/pi;
CY_rud = -0.002799*180/pi;

% DERIVADAS DO COEFICIENTE DE MOMENTO DE ROLAMENTO
Cl_beta = -0.020876;
Cl_p = -0.464911;
Cl_r = 0.073622 ;
Cl_ail = 0.004818 *180/pi;
Cl_rud = -0.000235*180/pi;

% DERIVADAS DO COEFICIENTE DE MOMENTO DE ARFAGEM
Cm0 = -0.06631;
Cm_alpha = -1.300632;
Cm_AlphaDot = 0;
Cm_q = -10.314818  ;
Cm_elev = -0.017311 *180/pi;    % Valor AVL: -0.019535

% DERIVADAS DO COEFICIENTE DE MOMENTO DE GUINADA
Cn_beta = 0.077040;
Cn_p = -0.012825 ;
Cn_r = -0.079209;
Cn_ail = 0.000011 *180/pi;
Cn_rud = 0.001253*180/pi;