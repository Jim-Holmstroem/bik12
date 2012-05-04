function A = ComputeBoxSum(ii_im, x, y, h, w)
    %Zero padded image and matlab is index 1.
    x = x+1;
    y = y+1;
    A = ii_im(x+w-1,y+h-1) - ii_im(x-1,y+h-1) - ii_im(x+w-1,y-1) + ii_im(x-1, y-1);
end
