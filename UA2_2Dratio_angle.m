clear all;

UA2_2D_AR = readmatrix('UA2-2D AngleRatio.txt');

a=UA2_2D_AR;

figure
whitebg([0.3010 0.7450 0.9330])
plot(a(1:8,2),a(1:8,3),'-xk', 'MarkerSize',10','lineWidth', 3' );

title ("UA2-2D Angle of Attack against Coefficient Ratios (Lift/drag)")
xlabel ("Angles of Attack");
ylabel ("Life/drag coefficient ratio")
grid on

figure(2)
whitebg([0.3010 0.7450 0.9330])
plot(a(1:7,1),a(1:7,3),'xk', 'MarkerSize',10','lineWidth', 3' );

title ("UA2-2D Reynolds Number against Coefficient Ratios (Lift/drag)")
xlabel ("Reynolds Number");
ylabel ("Life/drag coefficient ratio")
grid on