clear all;

NACA4412Test2 = readmatrix('NACA4412 Test 2.txt');

% experiments with UA2-2D 
% February 13 2024 
% Time 13:00 - 16:00
% temperature 19.5
% Angles: 0 degrees, 4 degrees, 6 degrees, 12 degrees, 15 degrees, 25 degrees, -3 degrees respectively

c=NACA4412Test2;

n3=43;
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


% NACA4412 Plots
figure(1)
whitebg([0.3010 0.7450 0.9330])
hold on
 plot(da(2:7,1),da(2:7,2),'-ok', 'MarkerSize',10','lineWidth', 3' );
hold on

plot(da(8:13,1),da(8:13,2),'-yo', 'MarkerSize',10','lineWidth', 3' );
hold on

plot(da(14:19,1),da(14:19,2),'-om', 'MarkerSize',10','lineWidth', 3' );
hold on

plot(da(20:25,1),da(20:25,2),'-or', 'MarkerSize',10','lineWidth', 3' );
hold on

plot(da(26:31,1),da(26:31,2),'-og', 'MarkerSize',10','lineWidth', 3' );
hold on

plot(da(32:37,1),da(32:37,2),'-ob', 'MarkerSize',10','lineWidth', 3' );
hold on

plot(da(38:43,1),da(38:43,2),'-oc', 'MarkerSize',10','lineWidth', 3' );
hold on

title ("NACA4412 Lift Coefficient against Reynolds Number")
xlabel ("Reynold Number");
ylabel ("Lift Coefficient Cl")

legend ("Cl 0 Degrees","Cl 4 Degrees","Cl 6 Degrees","Cl 12 Degrees","Cl 15(stall) Degrees","Cl 25(max) Degrees","Cl -3 Degrees")
grid on



figure(2)
whitebg([0.3010 0.7450 0.9330])
hold on

plot(da(2:7,1),da(2:7,3),'-ok', 'MarkerSize',10','lineWidth', 3');
hold on

plot(da(8:13,1),da(8:13,3),'-yo', 'MarkerSize',10','lineWidth', 3');
hold on

plot(da(14:19,1),da(14:19,3),'-om', 'MarkerSize',10','lineWidth', 3');
hold on

plot(da(20:25,1),da(20:25,3),'-or', 'MarkerSize',10','lineWidth', 3');
hold on

plot(da(26:31,1),da(26:31,3),'-og', 'MarkerSize',10','lineWidth', 3');
hold on

plot(da(32:37,1),da(32:37,3),'-ob', 'MarkerSize',10','lineWidth', 3');
hold on

plot(da(38:43,1),da(38:43,3),'-oc', 'MarkerSize',10','lineWidth', 3');
hold on

title ("NACA4412 Drag Coefficient against Reynolds Number")
xlabel ("Reynold Number");
ylabel ("Drag Coefficient Cd")

legend ("Cd 0 Degrees","Cd 4 Degrees","Cd 6 Degrees","Cd 12 Degrees","Cd 15(stall) Degrees","Cd 25(max) Degrees","Cd -3 Degrees")
grid on
