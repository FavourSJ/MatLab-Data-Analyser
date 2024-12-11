clear all;

UA2_2DAVG = readmatrix('UA2-2D Averages.txt');

% experiments with UA2-2D 
% Average of results
% temperature 19.5
% Angles: 0 degrees, 2 degrees, 3 degrees, 6 degrees, 12 degrees, 15 degrees, 18 degrees, 25 degrees respectively

c=UA2_2DAVG;

n3=50;
% this to change the recordings number

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
plot(da(1:6,1),da(1:6,2),'-ok', 'MarkerSize',10','lineWidth', 3' );
hold on

plot(da(1:6,1),da(1:6,3),'--xk', 'MarkerSize',15','lineWidth', 3');
hold on

plot(da(7:13,1),da(7:13,2),'-yo', 'MarkerSize',10','lineWidth', 3' );
hold on

plot(da(7:13,1),da(7:13,3),'--yx', 'MarkerSize',15','lineWidth', 3');
hold on

plot(da(14:19,1),da(14:19,2),'-om', 'MarkerSize',10','lineWidth', 3' );
hold on

plot(da(14:19,1),da(14:19,3),'--xm', 'MarkerSize',15','lineWidth', 3');
hold on

plot(da(20:25,1),da(20:25,2),'-or', 'MarkerSize',10','lineWidth', 3' );
hold on

plot(da(20:25,1),da(20:25,3),'--xr', 'MarkerSize',15','lineWidth', 3');
hold on

plot(da(26:31,1),da(26:31,2),'-og', 'MarkerSize',10','lineWidth', 3' );
hold on

plot(da(26:31,1),da(26:31,3),'--xg', 'MarkerSize',15','lineWidth', 3');
hold on

plot(da(32:37,1),da(32:37,2),'-ob', 'MarkerSize',10','lineWidth', 3' );
hold on

plot(da(32:37,1),da(32:37,3),'--xb', 'MarkerSize',15','lineWidth', 3');
hold on

plot(da(38:43,1),da(38:43,2),'-oc', 'MarkerSize',10','lineWidth', 3' );
hold on

plot(da(38:43,1),da(38:43,3),'--xc', 'MarkerSize',15','lineWidth', 3');
hold on

plot(da(44:50,1),da(44:50,2),'-ow', 'MarkerSize',10','lineWidth', 3' );
hold on

plot(da(44:50,1),da(44:50,3),'--xw', 'MarkerSize',15','lineWidth', 3');
hold on

title ("UA2-2D Average Results")
xlabel ("Reynold Number");
ylabel ("Drag Coefficient Cd (dashed), Lift Coefficient Cl (Solid)")

legend ("Cl 0 Degrees","Cd 0 Degrees","Cl 2 Degrees","Cd 2 Degrees","Cl 3 Degrees","Cd 3 Degrees","Cl 6 Degrees","Cd 6 Degrees","Cl 12 Degrees","Cd 12 Degrees","Cl 15 Degrees","Cd 15 Degrees","Cl 18 Degrees","Cd 18 Degrees","Cl 25 Degrees","Cd 25 Degrees")
grid on

%Lift and Drag coefficient Plots
figure(2)
whitebg([0.3010 0.7450 0.9330])
hold on
plot(da(1:6,3),da(1:6,2),'+k', 'MarkerSize',10','lineWidth', 1' );
hold on
plot(da(7:13,3),da(7:13,2),'y+', 'MarkerSize',10','lineWidth', 1' );
hold on
plot(da(14:19,3),da(14:19,2),'+m', 'MarkerSize',10','lineWidth', 1' );
hold on
plot(da(20:25,3),da(20:25,2),'+r', 'MarkerSize',10','lineWidth', 1' );
hold on
plot(da(26:31,3),da(26:31,2),'+g', 'MarkerSize',10','lineWidth', 1' );
hold on
plot(da(32:37,3),da(32:37,2),'+b', 'MarkerSize',10','lineWidth', 1' );
hold on
plot(da(38:43,3),da(38:43,2),'+c', 'MarkerSize',10','lineWidth', 1' );
hold on
plot(da(44:50,3),da(44:50,2),'+w', 'MarkerSize',10','lineWidth', 1' );

title ("UA2-2D Average Coefficients");
ylabel ("Lift Coefficient");
xlabel ("Drag Coefficient");

legend ("0 Degrees","2 Degrees","3 Degrees","6 Degrees","12 Degrees","15 Degrees","18 Degrees","25 Degrees")
grid on