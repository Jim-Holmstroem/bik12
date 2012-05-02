function [im, ii_im] = LoadIm(im_fname)
    im = double(imread(im_fname))/256;
    [w,h,d] = size(im);
    if(d~=1)
        im = rgb2gray(im);
    end
    im = im(:);
    im = (im - mean(im))/std(im);
    im = reshape(im,w,h);
    ii_im=[zeros(1,h+1);[zeros(w,1),cumsum(cumsum(im,1),2)]];
    
end