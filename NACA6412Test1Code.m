clear all;

NACA6412Test1 = readmatrix('NACA6412 Test 1.txt');

% experiments with UA2-2D 
% February 13 2024 
% Time 13:00 - 16:00
% temperature 19.5
% Angles: 0 degrees, 4 degrees, 6 degrees, 15 degrees, 25 degrees, 12 degrees, -3 degrees respectively

c=NACA6412Test1;

n3=71;
% this to change the recordings number

%c=i_2;


%c=i_1;
ro=1.2;
nu=1.5*10^(-5);
H=0.3;
B=0.6;


for i=1:n3
     if c(i,3)>2 && c(i,3)<4
         c(i,4)=c(i,4)+0.1;
         c(i,6)=c(i,6)-0.07;
     end;    
         
 if c(i,3)>6 && c(i,3)<8
         c(i,4)=c(i,4)+0.1;
         c(i,6)=c(i,6)-0.37;
  end;    
  
  if c(i,3)>9 && c(i,3)<12
         c(i,4)=c(i,4)+0.2;
         c(i,6)=c(i,6)-0.98;
  end;    
 
 if c(i,3)>13 && c(i,3)<16
         c(i,4)=c(i,4)+0.2;
         c(i,6)=c(i,6)-1.86;
  end;    
 
  if c(i,3)>19 && c(i,3)<22
         c(i,4)=c(i,4)+0.4;
         c(i,6)=c(i,6)-2.93;
  end;    
  
 
   if c(i,3)>22
         c(i,4)=c(i,4)+0.6;
         c(i,6)=c(i,6)-4.28;
  end;    
 
  
end


for i=1:n3
    
    da(i,1)=c(i,3)*H/nu;
    if c(i,3)>0
    da(i,2)=0.5*c(i,4)/(ro*c(i,3)^2*H*B);
    da(i,3)=0.5*c(i,6)/(ro*c(i,3)^2*H*B);
      
    else
        da(i,2)=0;
        da(i,3)=0;
    end;
    
end


for i=1:100
    t(i,1)=i*5000;
    t(i,2)=2*1.328/sqrt(t(i,1));
    
    t(i,3)=2*0.0307/t(i,1)^(1/7);
end


% UA2-2D Plots
figure
whitebg([0.3010 0.7450 0.9330])
hold on
plot(da(3:13,1),da(3:13,2),'-ok', 'MarkerSize',10','lineWidth', 3' );
hold on

%plot(da(3:13,1),da(3:13,3),'--xk', 'MarkerSize',15','lineWidth', 3');
hold on

plot(da(14:24,1),da(14:24,2),'-yo', 'MarkerSize',10','lineWidth', 3' );
hold on

%plot(da(14:24,1),da(14:24,3),'--yx', 'MarkerSize',15','lineWidth', 3');
hold on

plot(da(25:35,1),da(25:35,2),'-om', 'MarkerSize',10','lineWidth', 3' );
hold on

%plot(da(25:35,1),da(25:35,3),'--xm', 'MarkerSize',15','lineWidth', 3');
hold on

plot(da(36:46,1),da(36:46,2),'-or', 'MarkerSize',10','lineWidth', 3' );
hold on

%plot(da(36:46,1),da(36:46,3),'--xr', 'MarkerSize',15','lineWidth', 3');
hold on

plot(da(47:57,1),da(47:57,2),'-og', 'MarkerSize',10','lineWidth', 3' );
hold on

%plot(da(47:57,1),da(47:57,3),'--xg', 'MarkerSize',15','lineWidth', 3');
hold on

plot(da(58:64,1),da(58:64,2),'-ob', 'MarkerSize',10','lineWidth', 3' );
hold on

%plot(da(58:64,1),da(58:64,3),'--xb', 'MarkerSize',15','lineWidth', 3');
hold on

plot(da(65:71,1),da(65:71,2),'-oc', 'MarkerSize',10','lineWidth', 3' );
hold on

%plot(da(65:71,1),da(65:71,3),'--xc', 'MarkerSize',15','lineWidth', 3');
hold on

title ("NACA6412 Average Results")
xlabel ("Reynold Number");
ylabel ("Drag Coefficient Cd (dashed), Lift Coefficient Cl (Solid)")

legend ("Cl 0 Degrees","Cd 0 Degrees","Cl 4 Degrees","Cd 4 Degrees","Cl 6 Degrees","Cd 6 Degrees","Cl 15(stall) Degrees","Cd 15(stall) Degrees","Cl 25(max) Degrees","Cd 25(max) Degrees","Cl 12 Degrees","Cd 12 Degrees","Cl -3 Degrees","Cd -3 Degrees")
grid on

%Lift and Drag coefficient Plots
figure(2)
whitebg([0.3010 0.7450 0.9330])
hold on
plot(da(3:13,3),da(3:13,2),'+k', 'MarkerSize',10','lineWidth', 1' );
hold on
plot(da(14:24,3),da(14:24,2),'y+', 'MarkerSize',10','lineWidth', 1' );
hold on
plot(da(25:35,3),da(25:35,2),'+m', 'MarkerSize',10','lineWidth', 1' );
hold on
plot(da(36:46,3),da(36:46,2),'+r', 'MarkerSize',10','lineWidth', 1' );
hold on
plot(da(47:57,3),da(47:57,2),'+g', 'MarkerSize',10','lineWidth', 1' );
hold on
plot(da(58:64,3),da(58:64,2),'+b', 'MarkerSize',10','lineWidth', 1' );
hold on
plot(da(65:71,3),da(65:71,2),'+c', 'MarkerSize',10','lineWidth', 1' );
hold on

title ("NACA6412 Average Coefficients");
ylabel ("Lift Coefficient");
xlabel ("Drag Coefficient");

legend ("0 Degrees","4 Degrees","6 Degrees","15(stall) Degrees","25(max) Degrees","12 Degrees","-3 Degrees")
grid on