[im,ii_im]= LoadIm('test/one_chris.png');
[W,H]=size(ii_im)+1?;
im2 = im.^2;
ii_im2=[zeros(1,h+1);[zeros(w,1),cumsum(cumsum(im2,1),2)]];

L=19;

theta = 20;

for x=1:(W-L)
    for y=1:(H-L)
        %local normalization
        mu     = VecComputeFeature(ii_im,VecBoxSum(x,y,L,L,W,H)/(L^2);
        sigma2 = (VecComputeFeature(ii_im2,VecBoxSum(x,y,L,L,W,H))-(L*mu)^2)/(L^2-1);
        

    end
end

    
