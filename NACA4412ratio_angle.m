clear all;

NACA4412_Plot = readmatrix('NACARatios.txt');

a=NACA4412_Plot;

figure
whitebg([0.3010 0.7450 0.9330])
plot(a(1:7,2),a(1:7,3),'-xk', 'MarkerSize',10','lineWidth', 3' );

title ("NACA 4412 Angle of Attack against Coefficient Ratios (Lift/drag)")
xlabel ("Angles of Attack");
ylabel ("Life/drag coefficient ratio")
grid on

figure(2)
whitebg([0.3010 0.7450 0.9330])
plot(a(1:7,1),a(1:7,3),'xk', 'MarkerSize',10','lineWidth', 3' );

title ("NACA 4412 Reynolds Number against Coefficient Ratios (Lift/drag)")
xlabel ("Reynolds Number");
ylabel ("Life/drag coefficient ratio")
grid on