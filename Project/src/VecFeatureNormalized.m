function ftype_vec = VecFeatureNormalized(ftype, mu, sigma, W, H)
    %same as VeFeature but fixes normalization

    t=ftype(1);
    x=ftype(2);
    y=ftype(3);
    w=ftype(4);
    h=ftype(5);
   
    assert(size(ftype,2)==5);

    switch t
        case 1
            ftype_vec = (VecBoxSum(x, y, w, h, W ,H) - VecBoxSum( x, y+h, w, h,W,H))/sigma;
        case 2
             ftype_vec = (VecBoxSum( x+w, y, w, h,W,H) - VecBoxSum( x, y, w, h,W,H))/sigma;
        case 3
            ftype_vec = (VecFeature([2,ftype(2:end)],W,H) - VecBoxSum(x+2*w,y,w,h,W,H) + w*h*mu)/sigma;
        case 4
            ftype_vec =  (VecFeature([1,ftype(2)+w,ftype(3:end)],W,H) - VecFeature([1,ftype(2:end)],W,H))/sigma;
        otherwise
            error('ftype doesnt exist')
    end
    
end

