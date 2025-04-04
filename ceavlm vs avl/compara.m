load('VLM_com_polares_AVL.mat')

CL_vlm_com_avl = data.output.wind.coeff.CL ;
Cm_vlm_com_avl = data.output.body.coeff.Cm ;
alfa = data.output.alfa ;

load('VLM_com_polares_AVL_beta10.mat')

CL_vlm_com_avl_beta = data.output.wind.coeff.CL ;
Cm_vlm_com_avl_beta = data.output.body.coeff.Cm ;

load('VLM_polares_XFOIL.mat')

CL_vlm_com_xfoil = data.output.wind.coeff.CL ;
Cm_vlm_com_xfoil = data.output.body.coeff.Cm ;
alfa_vlm_xfoil = data.output.alfa ;

load('VLM_polares_XFOIL_beta10.mat')

CL_vlm_com_xfoil_beta = data.output.wind.coeff.CL ;
Cm_vlm_com_xfoil_beta = data.output.body.coeff.Cm ;
alfa_vlm_xfoil_beta = data.output.alfa ;

load('avl_beta0.mat')

CL_avl = avl.CL ;
Cm_avl = avl.Cm ;

load('avl_beta10.mat')

CL_avl_beta = avl.CL ;
Cm_avl_beta = avl.Cm ;

figure
plot(alfa,CL_avl,'LineWidth',2)
hold on 
plot(alfa,CL_vlm_com_xfoil,'LineWidth',2)
plot(alfa,CL_vlm_com_avl,'LineWidth',2)
legend('AVL','CEA-VLM com polares do XFOIL','CEA-VLM com polares do AVL','interpreter','latex','Location','northwest','fontsize',10) 
xlabel('$\alpha$','Interpreter','latex','FontSize',14)
ylabel('$C_L$','Interpreter','latex','FontSize',14)
title('$\beta = 0$','Interpreter','latex','FontSize',14)
grid on; grid minor; box on 

figure
plot(alfa,Cm_avl,'LineWidth',2)
hold on 
plot(alfa,Cm_vlm_com_xfoil,'LineWidth',2)
plot(alfa,Cm_vlm_com_avl,'LineWidth',2)
legend('AVL','CEA-VLM com polares do XFOIL','CEA-VLM com polares do AVL','interpreter','latex','Location','northwest','fontsize',10) 
xlabel('$\alpha$','Interpreter','latex','FontSize',14)
ylabel('$C_m$','Interpreter','latex','FontSize',14)
title('$\beta = 0$','Interpreter','latex','FontSize',14)
grid on; grid minor; box on 

figure
plot(alfa,CL_avl_beta,'LineWidth',2)
hold on 
plot(alfa,CL_vlm_com_xfoil_beta,'LineWidth',2)
plot(alfa,CL_vlm_com_avl_beta,'LineWidth',2)
legend('AVL','CEA-VLM com polares do XFOIL','CEA-VLM com polares do AVL','interpreter','latex','Location','northwest','fontsize',10) 
xlabel('$\alpha$','Interpreter','latex','FontSize',14)
ylabel('$C_L$','Interpreter','latex','FontSize',14)
title('$\beta = 10$','Interpreter','latex','FontSize',14)
grid on; grid minor; box on 

figure
plot(alfa,Cm_avl_beta,'LineWidth',2)
hold on 
plot(alfa,Cm_vlm_com_xfoil_beta,'LineWidth',2)
plot(alfa,Cm_vlm_com_avl_beta,'LineWidth',2)
legend('AVL','CEA-VLM com polares do XFOIL','CEA-VLM com polares do AVL','interpreter','latex','Location','northwest','fontsize',10) 
xlabel('$\alpha$','Interpreter','latex','FontSize',14)
ylabel('$C_m$','Interpreter','latex','FontSize',14)
title('$\beta = 10$','Interpreter','latex','FontSize',14)
grid on; grid minor; box on 