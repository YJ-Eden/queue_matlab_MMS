Ls=[];
Wq=[];
P=[];
E_count=[];
for i=1:1:15
    fprintf(2,'当结账窗口数量为%d时：\n',i);
    [ls,wq,p,e_count]=MMSkteam(i,50,16,2,120);
    Ls(i)=ls;
    Wq(i)=wq;
    P(i)=p;
    E_count(i)=e_count;
    fprintf('\n');
end

subplot(2,2,1)
plot(Ls);
title('平均队长');
xlabel('结账窗口数量');
ylabel('平均队长');
set(gca,'xtick',1:1:15);
grid on

box off

subplot(2,2,2)
plot(Wq);
title('平均等待时长');
xlabel('结账窗口数量');
ylabel('平均等待时长');
set(gca,'xtick',1:1:15);
grid on
box off

subplot(2,2,3)
plot(P);
title('顾客不能马上结账的概率');
xlabel('结账窗口数量');
ylabel('顾客不能马上结账的概率');
set(gca,'xtick',1:1:15);
grid on
box off

subplot(2,2,4)
plot(E_count);
title('损失顾客数');
xlabel('结账窗口数量');
ylabel('损失顾客数');
set(gca,'xtick',1:1:15);
grid on
box off
