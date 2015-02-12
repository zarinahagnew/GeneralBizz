%% this is an example of how to print and save high quality images from matlab
% ZKA jan 2015
% https://www.che.utah.edu/department_documents/Projects_Lab/Projects_Lab_Handbook/MatlabPlots.pdf


X = linspace(0,20,100);
X=X'
Y = X/20 + 0.2*rand(100,1) + 0.2*rand(100,1).*exp(X/10);
plot(X,Y,'*');
% 
% set(gcf,'PaperUnits','inches');
% set(gcf,'PaperSize', [8 8]);
% 
% set(gcf,'PaperPosition',[0.5 0.5 7 7]);
% %set(gcf,'PaperPosition',[left bottom width height]);
% 
% set(gcf,'PaperPositionMode','Manual');
print(gcf, '-dpdf', '-r150', 'test2.pdf');
% ?print the current figure to a pdf, with resolution of 150 dots per inch, and
% save the resultant pdf as filename.pdf.? T
figure
subplot(221)
plot(X,Y,'m*')

subplot(222)
plot(X,Y,'k--')

subplot(223)
plot(X,Y,'b*-')

subplot(224)
plot(X,Y,'r*')

savehighres.m

print(gcf, '-dpdf', '-r150', 'test3.pdf');


figure
set(gcf,'PaperUnits','inches');
set(gcf,'PaperSize', [8 8]);
set(gcf,'PaperPosition',[0.5 0.5 7 7]);
set(gcf,'PaperPositionMode','Manual');
plot(X,Y,'LineWidth',2);
print -painters -dpdf -r150 Demo_LineWidth.pdf
plot(X,Y,'rs','MarkerSize',30);
print -painters -dpdf -r150 Demo_MarkerSize.pdf
plot(X,Y,'bo--',...
'LineWidth',2,...
'MarkerEdgeColor','k',...
'MarkerFaceColor','r',...
'MarkerSize',10);
xlabel('moooooo')
ylabel('mooooo')

title('moooo')
set(get(gca,'xlabel'),'FontSize', 18, 'FontWeight', 'Bold');
set(get(gca,'ylabel'),'FontSize', 18, 'FontWeight', 'Bold');
set(get(gca,'title'),'FontSize', 18, 'FontWeight', 'Bold');


set(gca,'FontSize',16);
set(gca,'FontWeight','Bold');
set(gca,'LineWidth',2)


%background
set(gcf,'color','w');








