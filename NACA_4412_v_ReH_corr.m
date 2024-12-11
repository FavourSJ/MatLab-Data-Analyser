clear all;
%load qa1;

load NACA_4412;
% experiments with UA2-2D February 2 26, 2024 12-14
% temperature 19.5

c=NACA_4412;

n3=19;
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
%cases
figure
hold on
% plot(da(1:7,1),da(1:7,2),'->y', 'MarkerSize',10','lineWidth', 3' );
hold on

%plot(da(1:7,1),da(1:7,3),'--+y', 'MarkerSize',15','lineWidth', 3');
hold on

% plot(da(8:14,1),da(8:14,2),'-k>', 'MarkerSize',10','lineWidth', 3' );
hold on

%plot(da(8:14,1),da(8:14,3),'--k+', 'MarkerSize',15','lineWidth', 3');
hold on

%plot(da(15:20,1),da(15:20,2),'->', 'MarkerSize',10','lineWidth', 3' );
hold on

%plot(da(15:20,1),da(15:20,3),'--+', 'MarkerSize',15','lineWidth', 3');
hold on



% NACA 4412 Plots
 plot(da(2:7,1),da(2:7,2),'-ok', 'MarkerSize',10','lineWidth', 3' );
hold on

plot(da(2:7,1),da(2:7,3),'--xk', 'MarkerSize',15','lineWidth', 3');
hold on

plot(da(8:13,1),da(8:13,2),'-yo', 'MarkerSize',10','lineWidth', 3' );
hold on

plot(da(8:13,1),da(8:13,3),'--yx', 'MarkerSize',15','lineWidth', 3');
hold on


plot(da(14:19,1),da(14:19,2),'-om', 'MarkerSize',10','lineWidth', 3' );
hold on

plot(da(14:19,1),da(14:19,3),'--xm', 'MarkerSize',15','lineWidth', 3');
hold on


%plot(da(23:26,1),da(23:26,2),'->r', 'MarkerSize',10','lineWidth', 3' );
hold on

%plot(da(23:26,1),da(23:26,3),'--+r', 'MarkerSize',15','lineWidth', 3');
hold on


%plot(t(1:100,1),t(1:100,2),'-g', 'MarkerSize',15','lineWidth', 3');
hold on

%plot(t(12:100,1),t(12:100,3),'--g', 'MarkerSize',15','lineWidth', 3');
hold on
