function fs = ComputeFeature(ii_ims, ftype)
    featuretypes={@(ii_im,x,y,w,h) FeatureTypeI(ii_im,x,y,w,h),@(ii_im,x,y,w,h) FeatureTypeII(ii_im,x,y,w,h),@(ii_im,x,y,w,h) FeatureTypeIII(ii_im,x,y,w,h),@(ii_im,x,y,w,h) FeatureTypeIV(ii_im,x,y,w,h)};
    fs = zeros(1,length(ii_ims));
    enumfeatures = EnumAllFeatures(19,19);
    warning('Hard Code size 19x19');
    warning('featuretypes should be recreated all the time');
    for it = 1:size(ii_ims,1);
        %feature= featuretypes{ftype(1)};
        %fs(it)= feature(ftype(2),ftype(3),ftype(4),ftype(5));
        %ftype(1)
        %ftype(2)
        %ftype(3)
        %ftype(4)
        %ftype(5)
        %it
        if(ftype(1) == 1)
            fs(it) = FeatureTypeI(ii_ims{it},ftype(2),ftype(3),ftype(4),ftype(5));
        end
        if(ftype(1) == 2)
             fs(it) = FeatureTypeII(ii_ims{it},ftype(2),ftype(3),ftype(4),ftype(5));
        end
        if(ftype(1) == 3)
             fs(it) = FeatureTypeIII(ii_ims{it},ftype(2),ftype(3),ftype(4),ftype(5));
        end
        if(ftype(1) == 4)
             fs(it) = FeatureTypeIV(ii_ims{it},ftype(2),ftype(3),ftype(4),ftype(5));
        end
    end
end