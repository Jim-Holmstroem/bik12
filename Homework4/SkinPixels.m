function img_skin = SkinPixels(image)
    [mean,Sigma]=TrainColourModel('George_W_Bush',0.2);
    [mean_bg,Sigma_bg]=TrainColourModel('BackgroundImages');

    img=double(image);
    
    xs=rgb2hsv_mod(reshape(img,[size(img,1)*size(img,2),3]));

    lvals=GaussLikelihood(xs,mean,Sigma);
    lbvals=GaussLikelihood(xs,mean_bg,Sigma_bg);

    img_skin=reshape(lvals./lbvals>1,[size(img,1),size(img,2)]);
    img_skin=double(repmat(img_skin,[1 1 3]));

    figure();
    imshow(img/max(img(:)).*img_skin);%remove the nonskin pixels

