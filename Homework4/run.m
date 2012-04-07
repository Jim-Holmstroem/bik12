

img=imread('StudentImages/IMG_0256.jpg');
bim=SkinClassifier(img);

[bX,bY]=FindBiggestComp(bim);

figure();
imshow(double(bim));
hold on;
rectangle('Position',[min(bX(1),bX(2)),min(bY(1),bY(2)),abs(bX(2)-bX(1)),abs(bY(2)-bY(1))],'Curvature',[0.2,0.2],'LineStyle','--','EdgeColor','r')


%s=regionprops(bim);
%centroids=cat(1,s.Centroid);
%hold on;
%plot(centroids(:,1),centroids(:,2),'g*')
