function f = FeatureTypeIII(ii_im, x, y, w, h)
    f = FeatureTypeII(ii_im, x, y, w, h) + ComputeBoxSum(ii_im,x+2*w,y,w,h);
end