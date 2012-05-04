function A = ComputeBoxSum(ii_im, x, y, w, h)
    %Zero padded image and matlab is index 1.
    %x=14;y=15;w=16;h=2;ComputeBoxSum(ii_im,x,y,w,h)- sum(sum(im(y:y+h-1, x:x+w-1)))
    x = x+1;
    y = y+1;
    A = ii_im(y+h-1,x+w-1) - ii_im(y+h-1,x-1) - ii_im(y-1,x+w-1) + ii_im(y-1,x-1);
end
