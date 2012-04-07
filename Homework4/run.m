[mean,Sigma]=TrainColourModel('George_W_Bush',0.2);
[mean_bg,Sigma_bg]=TrainColourModel('BackgroundImages');

img=double(imread('StudentImages/IMG_0256.jpg'));
xs=rgb2hsv_mod(reshape(img,[size(img,1)*size(img,2),3]));

lvals=GaussLikelihood(xs,mean,Sigma);
lbvals=GaussLikelihood(xs,mean_bg,Sigma_bg);

img_skin=reshape(lvals./lbvals>0,[size(img,1),size(img,2)]);

%img(find(img_skin<1))=0;

figure();
size(repmat(img_skin,[1 1 3])


