[X,w,h]=LoadData('ADAFACES',[0.33,0.33]);
[mu,W,D]=ComputePCABasis(X);

student = double(imread('Student4.jpg'))/256;
student = rgb2gray(student);
im = student(183:248, 297:362);
figure(1);
%imshow_normalised(im,w,h);
subplot(2,5,1)
rim = ReconstructFace(im,mu,W, w, h, 1);
imshow_normalised(rim(:),size(rim,1),size(rim,2));
subplot(2,5,2)
rim = ReconstructFace(im,mu,W, w, h, 10);
imshow_normalised(rim(:),size(rim,1),size(rim,2));
subplot(2,5,3)
rim = ReconstructFace(im,mu,W, w, h, 20);
imshow_normalised(rim(:),size(rim,1),size(rim,2));
subplot(2,5,4)
rim = ReconstructFace(im,mu,W, w, h, 50);
imshow_normalised(rim(:),size(rim,1),size(rim,2));
subplot(2,5,5)
rim = ReconstructFace(im,mu,W, w, h, 100);
imshow_normalised(rim(:),size(rim,1),size(rim,2));
subplot(2,5,6)
rim = ReconstructFace(im,mu,W, w, h, 150);
imshow_normalised(rim(:),size(rim,1),size(rim,2));
subplot(2,5,7)
rim = ReconstructFace(im,mu,W, w, h, 200);
imshow_normalised(rim(:),size(rim,1),size(rim,2));
subplot(2,5,8)
rim = ReconstructFace(im,mu,W, w, h, 250);
imshow_normalised(rim(:),size(rim,1),size(rim,2));
%imshow(rim);

%figure(2);
%imshow_normalised(mu,w,h);
%
%figure(3);
%for it =1:10
%    subplot(2,5,it)
%    imshow_normalised(W(:,it),w,h);
%end