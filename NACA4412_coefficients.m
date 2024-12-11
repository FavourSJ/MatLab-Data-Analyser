clear all
cl = [0.277, 0.262, 0.2996, 0.283, 0.242, 0.268];
cd = [0.076, 0.064, 0.074, 0.069, 0.059, 0.066];

figure
scatter(cl,cd, 'filled')

title ("NACA4412 Test 1 Coefficients");
xlabel ("Drag Coefficient");
ylabel ("Lift Coefficient");
