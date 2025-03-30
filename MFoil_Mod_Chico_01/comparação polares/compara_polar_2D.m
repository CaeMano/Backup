%% Compara MFOIL XFOIL EXPERIMENTAL E CFD

clear; clc; close all

usf_23.on = 0 ;
naca0012.on = 0 ;
naca23012.on = 0 ;
naca63221.on = 0 ;
naca63215.on = 0 ;
ms1_0313.on = 1 ;

if usf_23.on

load('usf23_mfoil2.mat')

alfa_mfoil = linspace(0,length(mfoil_polars.CL),length(mfoil_polars.CL)) ;
CL_mfoil = mfoil_polars.CL ;
CD_mfoil = mfoil_polars.CD ;
Cm_mfoil = mfoil_polars.CM ; 

load('usf23_xfoil2.mat')

alfa_xfoil = xf.Polars{1,1}.Alpha ;
CL_xfoil = xf.Polars{1,1}.CL ;
CD_xfoil = xf.Polars{1,1}.CD ;
Cm_xfoil = xf.Polars{1,1}.CM ; 

alfa_cfd = [-2.0
0.0
2.0
4.0
6.0
8.0
10.0
12.0
13.0
14.0
15.0
16.0]' ;
CL_cfd = [0.937
1.160
1.363
1.558
1.740
1.904
2.044
2.150
2.181
2.193
2.180
2.124]' ;
CD_cfd = [0.020
0.022
0.025
0.028
0.032
0.037
0.043
0.052
0.058
0.067
0.079
0.098]' ;
Cm_cfd = [-0.262
-0.262
-0.259
-0.255
-0.249
-0.241
-0.229
-0.217
-0.209
-0.202
-0.196
-0.193]' ; 


figure
scatter(alfa_mfoil,CL_mfoil,'LineWidth',2)
hold on; box on; grid on; grid minor 
scatter(alfa_xfoil,CL_xfoil,'LineWidth',2)
scatter(alfa_cfd,CL_cfd,'LineWidth',2)
xlabel('$\alpha$','Interpreter','latex','FontSize',14)
ylabel('$C_L$','Interpreter','latex','FontSize',14)
legend('$MFOIL$','$XFOIL$','CFD','interpreter','latex','FontSize',10,'location','northwest')
title('USF 23','interpreter','latex')

figure
scatter(CL_mfoil,CD_mfoil,'LineWidth',2)
hold on; box on; grid on; grid minor 
scatter(CL_xfoil,CD_xfoil,'LineWidth',2)
scatter(CL_cfd,CD_cfd,'LineWidth',2)
xlabel('$C_L$','Interpreter','latex','FontSize',14)
ylabel('$C_D$','Interpreter','latex','FontSize',14)
legend('$MFOIL$','$XFOIL$','CFD','interpreter','latex','FontSize',10,'location','northwest')
title('USF 23','interpreter','latex')

figure
scatter(CL_mfoil,Cm_mfoil,'LineWidth',2)
hold on; box on; grid on; grid minor 
scatter(CL_xfoil,Cm_xfoil,'LineWidth',2)
scatter(CL_cfd,Cm_cfd,'LineWidth',2)
xlabel('$C_L$','Interpreter','latex','FontSize',14)
ylabel('$C_m$','Interpreter','latex','FontSize',14)
legend('$MFOIL$','$XFOIL$','CFD','interpreter','latex','FontSize',10,'location','northwest')
title('USF 23','interpreter','latex')

end

if naca0012.on

load('naca0012_mfoil.mat')

alfa_mfoil = linspace(0,length(mfoil_polars.CL),length(mfoil_polars.CL)) ;
CL_mfoil = mfoil_polars.CL ;
CD_mfoil = mfoil_polars.CD ;
Cm_mfoil = mfoil_polars.CM ; 

load('naca0012_xfoil.mat')

alfa_xfoil = xf.Polars{1,1}.Alpha ;
CL_xfoil = xf.Polars{1,1}.CL ;
CD_xfoil = xf.Polars{1,1}.CD ;
Cm_xfoil = xf.Polars{1,1}.CM ; 

load('naca0012_exp.mat')

j = find(Polar2D.angulos == 0) ;

alfa_exp = Polar2D.angulos(j:length(Polar2D.angulos)) ;
CL_exp = Polar2D.Cl(3,j:length(Polar2D.angulos)) ;
CD_exp = Polar2D.Cd(3,j:length(Polar2D.angulos)) ;
Cm_exp = Polar2D.Cm(3,j:length(Polar2D.angulos)) ; 


figure
scatter(alfa_mfoil,CL_mfoil,'LineWidth',2)
hold on; box on; grid on; grid minor 
scatter(alfa_xfoil,CL_xfoil,'LineWidth',2)
scatter(alfa_exp,CL_exp,'LineWidth',2)
xlabel('$\alpha$','Interpreter','latex','FontSize',14)
ylabel('$C_L$','Interpreter','latex','FontSize',14)
legend('$MFOIL$','$XFOIL$','Experimental','interpreter','latex','FontSize',10,'location','northwest')
title('NACA 0012','Interpreter','latex')

figure
scatter(CL_mfoil,CD_mfoil,'LineWidth',2)
hold on; box on; grid on; grid minor 
scatter(CL_xfoil,CD_xfoil,'LineWidth',2)
scatter(CL_exp,CD_exp,'LineWidth',2)
xlabel('$C_L$','Interpreter','latex','FontSize',14)
ylabel('$C_D$','Interpreter','latex','FontSize',14)
legend('$MFOIL$','$XFOIL$','Experimental','interpreter','latex','FontSize',10,'location','northwest')
title('NACA 0012','Interpreter','latex')

figure
scatter(CL_mfoil,Cm_mfoil,'LineWidth',2)
hold on; box on; grid on; grid minor 
scatter(CL_xfoil,Cm_xfoil,'LineWidth',2)
scatter(CL_exp,Cm_exp,'LineWidth',2)
xlabel('$C_L$','Interpreter','latex','FontSize',14)
ylabel('$C_m$','Interpreter','latex','FontSize',14)
legend('$MFOIL$','$XFOIL$','Experimental','interpreter','latex','FontSize',10,'location','northwest')
title('NACA 0012','Interpreter','latex')

end

if naca23012.on

load('naca23012_mfoil.mat')

alfa_mfoil = linspace(0,length(mfoil_polars.CL),length(mfoil_polars.CL)) ;
CL_mfoil = mfoil_polars.CL ;
CD_mfoil = mfoil_polars.CD ;
Cm_mfoil = mfoil_polars.CM ; 

load('naca23012_xfoil.mat')

alfa_xfoil = xf.Polars{1,1}.Alpha ;
CL_xfoil = xf.Polars{1,1}.CL ;
CD_xfoil = xf.Polars{1,1}.CD ;
Cm_xfoil = xf.Polars{1,1}.CM ; 

load('naca23012_exp3.mat')

j = find(Polar2D.angulos == 0) ;

alfa_exp = Polar2D.angulos(j:length(Polar2D.angulos)) ;
CL_exp = Polar2D.CL(1,j:length(Polar2D.angulos)) ;
CD_exp = Polar2D.CD(1,j:length(Polar2D.angulos)) ;
Cm_exp = Polar2D.Cm(1,j:length(Polar2D.angulos)) ; 


figure
scatter(alfa_mfoil,CL_mfoil,'LineWidth',2)
hold on; box on; grid on; grid minor 
scatter(alfa_xfoil,CL_xfoil,'LineWidth',2)
scatter(alfa_exp,CL_exp,'LineWidth',2)
xlabel('$\alpha$','Interpreter','latex','FontSize',14)
ylabel('$C_L$','Interpreter','latex','FontSize',14)
legend('$MFOIL$','$XFOIL$','Experimental','interpreter','latex','FontSize',10,'location','northwest')
title('NACA 23012','Interpreter','latex')

figure
scatter(CL_mfoil,CD_mfoil,'LineWidth',2)
hold on; box on; grid on; grid minor 
scatter(CL_xfoil,CD_xfoil,'LineWidth',2)
scatter(CL_exp,CD_exp,'LineWidth',2)
xlabel('$C_L$','Interpreter','latex','FontSize',14)
ylabel('$C_D$','Interpreter','latex','FontSize',14)
legend('$MFOIL$','$XFOIL$','Experimental','interpreter','latex','FontSize',10,'location','northwest')
title('NACA 23012','Interpreter','latex')

figure
scatter(CL_mfoil,Cm_mfoil,'LineWidth',2)
hold on; box on; grid on; grid minor 
scatter(CL_xfoil,Cm_xfoil,'LineWidth',2)
scatter(CL_exp,Cm_exp,'LineWidth',2)
xlabel('$C_L$','Interpreter','latex','FontSize',14)
ylabel('$C_m$','Interpreter','latex','FontSize',14)
legend('$MFOIL$','$XFOIL$','Experimental','interpreter','latex','FontSize',10,'location','northwest')
title('NACA 23012','Interpreter','latex')

end

if naca63221.on

load('naca63221_mfoil.mat')

alfa_mfoil = linspace(0,length(mfoil_polars.CL),length(mfoil_polars.CL)) ;
CL_mfoil = mfoil_polars.CL ;
CD_mfoil = mfoil_polars.CD ;
Cm_mfoil = mfoil_polars.CM ; 

img_CL = imread('CL_naca63221_2.png'); % Substitua pelo nome do arquivo da imagem

% Defina os limites desejados
x_lim = [0 20]; % Intervalo em x
y_lim = [0 1.8]; % Intervalo em y

% Crie a figura e configure os eixos
figure;
imagesc(x_lim, y_lim, flipud(img_CL)); % Plota a imagem com os limites definidos
set(gca, 'YDir', 'normal'); % Ajusta para o eixo Y estar em ordem crescente

% Configure os eixos
xlim(x_lim);
ylim(y_lim);
hold on
scatter(alfa_mfoil,CL_mfoil,'LineWidth',2)

% Adicionar elementos ao gráfico (opcional)
title('NACA 63221','Interpreter','latex');
grid on; box on; % Grade para ajudar na visualização
legend('mfoil','interpreter','latex','location','best')
ylabel('$C_L$','interpreter','latex','Fontsize',14)
xlabel('$\alpha$','interpreter','latex','Fontsize',14)
hold off;

img_CD = imread('CD_naca63221_2.png'); % Substitua pelo nome do arquivo da imagem

% Defina os limites desejados
x_lim = [0 20]; % Intervalo em x
y_lim = [0 0.1]; % Intervalo em y

% Crie a figura e configure os eixos
figure;
imagesc(x_lim, y_lim, flipud(img_CD)); % Plota a imagem com os limites definidos
set(gca, 'YDir', 'normal'); % Ajusta para o eixo Y estar em ordem crescente

% Configure os eixos
xlim(x_lim);
ylim(y_lim);
hold on
scatter(alfa_mfoil,CD_mfoil,'LineWidth',2,'Marker','square')

% Adicionar elementos ao gráfico (opcional)
title('NACA 63221','Interpreter','latex');
grid on; box on; % Grade para ajudar na visualização
legend('mfoil','interpreter','latex','location','best')
ylabel('$C_D$','interpreter','latex','Fontsize',14)
xlabel('$\alpha$','interpreter','latex','Fontsize',14)
hold off;

img_Cm = imread('Cm_naca63221.png'); % Substitua pelo nome do arquivo da imagem

% Defina os limites desejados
x_lim = [0 20]; % Intervalo em x
y_lim = [0.02 0.1]; % Intervalo em y

% Crie a figura e configure os eixos
figure;
imagesc(x_lim, y_lim, flipud(img_Cm)); % Plota a imagem com os limites definidos
set(gca, 'YDir', 'normal'); % Ajusta para o eixo Y estar em ordem crescente

% Configure os eixos
xlim(x_lim);
ylim(y_lim);
hold on
scatter(alfa_mfoil,abs(Cm_mfoil),'LineWidth',2,'Marker','square')

% Adicionar elementos ao gráfico (opcional)
title('NACA 63221','Interpreter','latex');
grid on; box on; % Grade para ajudar na visualização
legend('mfoil','interpreter','latex','location','best')
ylabel('$|C_m|$','interpreter','latex','Fontsize',14)
xlabel('$\alpha$','interpreter','latex','Fontsize',14)
hold off;


end


if naca63215.on

load('naca63215_mfoil.mat')

alfa_mfoil = linspace(0,length(mfoil_polars.CL),length(mfoil_polars.CL)) ;
CL_mfoil = mfoil_polars.CL ;
CD_mfoil = mfoil_polars.CD ;
Cm_mfoil = mfoil_polars.CM ; 

img_CL = imread('CL_naca63215.png'); % Substitua pelo nome do arquivo da imagem

% Defina os limites desejados
x_lim = [0 23]; % Intervalo em x
y_lim = [0 1.8]; % Intervalo em y

% Crie a figura e configure os eixos
figure;
imagesc(x_lim, y_lim, flipud(img_CL)); % Plota a imagem com os limites definidos
set(gca, 'YDir', 'normal'); % Ajusta para o eixo Y estar em ordem crescente

% Configure os eixos
xlim(x_lim);
ylim(y_lim);
hold on
scatter(alfa_mfoil,CL_mfoil,'LineWidth',2)

% Adicionar elementos ao gráfico (opcional)
title('NACA 63215','Interpreter','latex');
grid on; box on; % Grade para ajudar na visualização
legend('mfoil','interpreter','latex','location','best')
ylabel('$C_L$','interpreter','latex','Fontsize',14)
xlabel('$\alpha$','interpreter','latex','Fontsize',14)
hold off;

img_CD = imread('CD_naca63215.png'); % Substitua pelo nome do arquivo da imagem

% Defina os limites desejados
x_lim = [0 23]; % Intervalo em x
y_lim = [0 0.45]; % Intervalo em y

% Crie a figura e configure os eixos
figure;
imagesc(x_lim, y_lim, flipud(img_CD)); % Plota a imagem com os limites definidos
set(gca, 'YDir', 'normal'); % Ajusta para o eixo Y estar em ordem crescente

% Configure os eixos
xlim(x_lim);
ylim(y_lim);
hold on
scatter(alfa_mfoil,CD_mfoil,'LineWidth',2,'Marker','square')

% Adicionar elementos ao gráfico (opcional)
title('NACA 63215','Interpreter','latex');
grid on; box on; % Grade para ajudar na visualização
legend('mfoil','interpreter','latex','location','best')
ylabel('$C_D$','interpreter','latex','Fontsize',14)
xlabel('$\alpha$','interpreter','latex','Fontsize',14)
hold off;

img_Cm = imread('Cm_naca63215.png'); % Substitua pelo nome do arquivo da imagem

% Defina os limites desejados
x_lim = [0 23]; % Intervalo em x
y_lim = [0.04 0.22]; % Intervalo em y

% Crie a figura e configure os eixos
figure;
imagesc(x_lim, y_lim, flipud(img_Cm)); % Plota a imagem com os limites definidos
set(gca, 'YDir', 'normal'); % Ajusta para o eixo Y estar em ordem crescente

% Configure os eixos
xlim(x_lim);
ylim(y_lim);
hold on
scatter(alfa_mfoil,abs(Cm_mfoil),'LineWidth',2,'Marker','square')

% Adicionar elementos ao gráfico (opcional)
title('NACA 63215','Interpreter','latex');
grid on; box on; % Grade para ajudar na visualização
legend('mfoil','interpreter','latex','location','best')
ylabel('$|C_m|$','interpreter','latex','Fontsize',14)
xlabel('$\alpha$','interpreter','latex','Fontsize',14)
hold off;


end

if ms1_0313.on 

load('ms10313_mfoil.mat')

alfa_mfoil = linspace(0,length(mfoil_polars.CL),length(mfoil_polars.CL)) ;
CL_mfoil = mfoil_polars.CL ;
CD_mfoil = mfoil_polars.CD ;
Cm_mfoil = mfoil_polars.CM ; 

load('ms10313_xfoil.mat')

alfa_xfoil = xf.Polars{1,1}.Alpha ;
CL_xfoil = xf.Polars{1,1}.CL ;
CD_xfoil = xf.Polars{1,1}.CD ;
Cm_xfoil = xf.Polars{1,1}.CM ; 

img_CL = imread('CL_ms10313.png'); % Substitua pelo nome do arquivo da imagem

% Defina os limites desejados
x_lim = [-10 22.5]; % Intervalo em x
y_lim = [-1 2.5]; % Intervalo em y

% Crie a figura e configure os eixos
figure;
imagesc(x_lim, y_lim, flipud(img_CL)); % Plota a imagem com os limites definidos
set(gca, 'YDir', 'normal'); % Ajusta para o eixo Y estar em ordem crescente

% Configure os eixos
xlim(x_lim);
ylim(y_lim);
hold on
scatter(alfa_mfoil,CL_mfoil,'LineWidth',2)
scatter(alfa_xfoil,CL_xfoil,'LineWidth',2)

% Adicionar elementos ao gráfico (opcional)
title('ms(1) 0313','Interpreter','latex');
grid on; box on; % Grade para ajudar na visualização
legend('mfoil','xfoil','interpreter','latex','location','best')
ylabel('$C_L$','interpreter','latex','Fontsize',14)
xlabel('$\alpha$','interpreter','latex','Fontsize',14)
hold off;

img_CD = imread('CD_ms10313.png'); % Substitua pelo nome do arquivo da imagem

% Defina os limites desejados
x_lim = [-1 2.5]; % Intervalo em x
y_lim = [0 0.08]; % Intervalo em y

% Crie a figura e configure os eixos
figure;
imagesc(x_lim, y_lim, flipud(img_CD)); % Plota a imagem com os limites definidos
set(gca, 'YDir', 'normal'); % Ajusta para o eixo Y estar em ordem crescente

% Configure os eixos
xlim(x_lim);
ylim(y_lim);
hold on
scatter(CL_mfoil,CD_mfoil,'LineWidth',2,'Marker','square')
scatter(CL_xfoil,CD_xfoil,'LineWidth',2,'Marker','square')

% Adicionar elementos ao gráfico (opcional)
title('ms(1) 0313','Interpreter','latex');
grid on; box on; % Grade para ajudar na visualização
legend('mfoil','xfoil','interpreter','latex','location','best')
ylabel('$C_D$','interpreter','latex','Fontsize',14)
xlabel('$C_L$','interpreter','latex','Fontsize',14)
hold off;

img_Cm = imread('Cm_ms10313.png'); % Substitua pelo nome do arquivo da imagem

% Defina os limites desejados
x_lim = [-10 22.5]; % Intervalo em x
y_lim = [-0.25 0.05]; % Intervalo em y

% Crie a figura e configure os eixos
figure;
imagesc(x_lim, y_lim, flipud(img_Cm)); % Plota a imagem com os limites definidos
set(gca, 'YDir', 'normal'); % Ajusta para o eixo Y estar em ordem crescente

% Configure os eixos
xlim(x_lim);
ylim(y_lim);
hold on
scatter(alfa_mfoil,(Cm_mfoil),'LineWidth',2,'Marker','square')
scatter(alfa_xfoil,(Cm_xfoil),'LineWidth',2,'Marker','square')

% Adicionar elementos ao gráfico (opcional)
title('ms(1) 0313','Interpreter','latex');
grid on; box on; % Grade para ajudar na visualização
legend('mfoil','xfoil','interpreter','latex','location','best')
ylabel('$C_m$','interpreter','latex','Fontsize',14)
xlabel('$\alpha$','interpreter','latex','Fontsize',14)
hold off;



end