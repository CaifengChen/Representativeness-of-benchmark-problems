clear all
global initial_flag
initial_flag = 0;

% 范围，间隔为0.6
% 这里需要根据函数的定义域来进行修改
% 定义域大，间隔大；定义域小，间隔小。这样画出来的图的轮廓会稍微清晰点
[d, lb, ub] = getInf(43);
x = [lb:(ub-lb)/72.72:ub];    % (ub-lb)
y = x;
[X,Y] = meshgrid(x,y); % 生成网格采样点
[row,col] = size(X);
for n=1:col   
    for m=1:row 
        z(m,n)=rosen([x(n),y(m)]);   
    end   
end  

%绘制图形
surf(X,Y,z);
colormap Turbo;

xlabel('x1');
ylabel('x2');
zlabel('f(x1,x2)');
title('Rosenbrock Function');
%三维曲面
%mesh(X,Y,z);
%三维图形——平滑
%shading interp 

%设置轴范围
% xlim([0 2.5]);
% ylim([-4 0]);
% zlim([0 25]);
%调整网格线的间距
% set(gca,'ytick',-30:5:30);
% set(gca,'xtick',-30:5:30);