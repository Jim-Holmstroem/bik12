
c1=[7, 11;15, 9;15, 7;13, 5;14, 4;9, 3;11, 3];
c2=[11, 11;13, 11;8, 10;9, 9;7, 7;7, 5;15, 3];

plot(c1(:,1),c1(:,2),'rx','LineWidth',1);
hold on;
plot(c2(:,1),c2(:,2),'bs','LineWidth',1);

plot([4 18],[0 14],'k','LineWidth',1);%centerline

plot([2 6 9 9],[9 9 12 14],'k','LineWidth',1);%upperleft boundary
plot([13 13 16 18],[0 2 5 5],'k','LineWidth',1);%upperleft boundary

axis([2 18 0 14])
xlabel('x_1')
ylabel('x_2')

