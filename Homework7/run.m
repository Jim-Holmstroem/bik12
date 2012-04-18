[X,w,h]=LoadData('ADAFACES',[1.0,1.0]);
[mu,W,D]=ComputePCABasis(X);

figure(1);
imshow_normalised(mu,w,h);

figure(2);
for it =1:10
    subplot(2,5,it)
    imshow_normalised(W(:,it),w,h);
end
