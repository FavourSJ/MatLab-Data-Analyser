clear all;

UA2_2DTest3 = readmatrix('Test 3.txt');

% experiments with UA2-2D 
% February 9 26 2024 
% Time 14:00 - 16:00
% temperature 19.5
% Angles:0 degrees, 12 degrees and 6 respectively

c=UA2_2DTest3;

n3=25;
% this to change the recordings value

%c=i_2;


%c=i_1;
ro=1.2;
nu=1.5*10^(-5);
H=0.3;
B=0.6;

%n3=30;
%n3=20;
%n3=26;


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

plot(da(2:7,1),da(2:7,2),'-go', 'MarkerSize',10','lineWidth', 3' );
hold on

plot(da(2:7,1),da(2:7,3),'--gx', 'MarkerSize',15','lineWidth', 3');
hold on

plot(da(8:12,1),da(8:12,2),'-om', 'MarkerSize',10','lineWidth', 3' );
hold on

plot(da(8:12,1),da(8:12,3),'--xm', 'MarkerSize',15','lineWidth', 3');
hold on

plot(da(13:18,1),da(13:18,2),'-or', 'MarkerSize',10','lineWidth', 3' );
hold on

plot(da(13:18,1),da(13:18,3),'--xr', 'MarkerSize',15','lineWidth', 3');
hold on

plot(da(20:25,1),da(20:25,2),'-ob', 'MarkerSize',10','lineWidth', 3' );
hold on

plot(da(20:25,1),da(20:25,3),'--xb', 'MarkerSize',15','lineWidth', 3');
hold on

title ("UA2-2D Test 3")
xlabel ("Reynold Number");
ylabel ("Drag Coefficient Cd (dashed), Lift Coefficient Cl (Solid)")

legend ("Cl 0 Degrees","Cd 0 Degrees","Cl 12 Degrees","Cd 12 Degrees","Cl 6 Degrees(Test 1)","Cd 6 Degrees(Test 1)","Cl 6 Degrees(Test 2)","Cd 6 Degrees(Test 2)")
grid on

%Lift and Drag coefficient Plots
figure(2)
hold on
plot(da(2:7,3),da(2:7,2),'+g', 'MarkerSize',10','lineWidth', 1' );
hold on
plot(da(8:12,3),da(8:12,2),'+m', 'MarkerSize',10','lineWidth', 1' );
hold on
plot(da(13:18,3),da(13:18,2),'+r', 'MarkerSize',10','lineWidth', 1' );
hold on
plot(da(20:25,3),da(20:25,2),'+b', 'MarkerSize',10','lineWidth', 1' );

title ("UA2-2D Test 3 Coefficients");
ylabel ("Lift Coefficient");
xlabel ("Drag Coefficient");

legend ("0 Degrees","12 Degrees","6 Degrees(Test 1)","6 Degrees(Test 2)")
grid on