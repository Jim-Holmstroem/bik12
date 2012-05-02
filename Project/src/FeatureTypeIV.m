function f = FeatureTypeIV(ii_im, x, y, w, h)
    f =  FeatureTypeI(ii_im, x+w, y, w, h) - FeatureTypeI(ii_im, x, y, w, h);
end