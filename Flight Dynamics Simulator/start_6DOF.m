%% Roda Simulador 


eta_barra = [];

velc = 30:1:100 ;

estabilidade

for i = 1:length(velc)

    velocidade(i) = velc(i) ;

    Initialization_loop

    trim_aircraft_loop

    eta_barra = [eta_barra opreport.Inputs(2,1).u] ;

    CL_barra(i) = 300*9.81/(0.5*1.225*v(i).^2*4.74) ;

end

plot(CL_barra,eta_barra,'LineWidth',2,'LineStyle',estilo(2),'Color',cor(10))
legend("$h = 25.05\%$ de $\bar{\bar{c}}$ - Formula\c{c}\~ao Cl\'assica",'$h = 25.05\%$ de $\bar{\bar{c}}$ - Formula\c{c}\~ao Proposta',' $h = 25.05\%$ de $\bar{\bar{c}}$ - 6DOF','interpreter','latex','Location','best','FontSize',12)
