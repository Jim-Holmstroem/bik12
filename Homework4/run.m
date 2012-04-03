[mean,Sigma]=TrainColourModel('George_W_Bush');

img=double(imread('StudentImages/IMG_0256.jpg'));
xs=reshape(img,[size(img,1)*size(img,2),3]);

lvals=GaussLikelihood(xs,mean,Sigma);

img_skin=reshape(lvals,[size(img,1),size(img,2)])


