distance =1;
rate=100;
graph=[];
off=.2;
for c=1:(rate*distance)
    c_dis=c/rate;
    graph(c)=equationmagandgrav((c_dis+off));
end

figure
ax1 = subplot(1,1,1);
plot(0:1/rate:((length(graph)-1/rate)/rate),graph);
title(ax1, "Net Force by Distance", 'fontweight','bold','fontsize',16);
ylabel(ax1, 'Net Force', 'fontweight','bold','fontsize',16);
xlabel(ax1, 'Distance Between Magnets', 'fontweight','bold','fontsize',16);
set(gca,'Xticklabel',[])
refline(ax1,0)
