%% MASS PROPERTIES
Ixx = 588.09;
Iyy =  637.46 ;
Izz = 304.31 ;
Inertia = [Ixx 0 0; 0 Iyy 0; 0 0 Izz];  % Tensor de inércias [kg.m²]  
                                                                  
%% GRAVITY                                                               
g = 9.80665;                            % Aceleração da gravidade [m/s²]

%% ENGINE DATA
V_reference_mps = 81.55;                 % Velocidade de referência [m/s]
rho_reference_kgpm3 = 0.9569;           % Densidade de referência [m/s]
nv = -1;
nrho = 0.75;
alfaf_deg = 0;                          % Ângulo do motor [deg]
xf_m = 2.02 ;                           % Distância em x do motor ao CG (+ is FWD of the CG) [m]
zf_m = 0.1418 ;                              % Distância em z do motor ao CG (+ is below the ref. plane) [m]
Tmax = 300*745.7/V_reference_mps;       % Tração máxima [N]

%% AIRCRAFT DATA
b = 5.76 ;                              % Envergadura da asa [m]
cma = 0.84 ;                            % Corda média aerodinâmica [m]
S = 4.74 ;                              % Área da asa [m²]

%% AERODYNAMIC DATA

% DERIVADAS DO COEFICIENTE DE SUSTENTAÇÃO
CL0 = 0.20539;
CL_alpha = 4.865906;
CL_AlphaDot = 0;
CL_q = 8.057645;
CL_elev = 0.0064*180/pi;

% DERIVADAS DO COEFICIENTE DE ARRASTO 
CD0 = 0.01534;
CD_alpha = 0;
CD_elev = 0.000010*180/pi;

% DERIVADAS DO COEFICIENTE DE FORÇA LATERAL
CY_beta = -0.191039;
CY_p = 0.023084;
CY_r = 0.170019;
CY_ail = -0.000195*180/pi;
CY_rud = -0.002799*180/pi;

% DERIVADAS DO COEFICIENTE DE MOMENTO DE ROLAMENTO
Cl_beta = -0.020876;
Cl_p = -0.464911;
Cl_r = 0.073227;
Cl_ail = 0.005020*180/pi;
Cl_rud = -0.000235*180/pi;

% DERIVADAS DO COEFICIENTE DE MOMENTO DE ARFAGEM
Cm0 = -0.05304;
Cm_alpha = -0.985144;
Cm_AlphaDot = 0;
Cm_q = -9.625909 ;
Cm_elev = -0.016898 *180/pi;    % Valor AVL: -0.019535

% DERIVADAS DO COEFICIENTE DE MOMENTO DE GUINADA
Cn_beta = 0.075240;
Cn_p = -0.012611 ;
Cn_r = -0.076155;
Cn_ail = 0.000017*180/pi;
Cn_rud = 0.001227*180/pi;