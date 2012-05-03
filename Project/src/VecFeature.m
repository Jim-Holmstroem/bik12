function ftype_vec = VecFeature(ftype, W, H)
    t=ftype(1);
    x=ftype(2);
    y=ftype(3);
    w=ftype(4);
    h=ftype(5);
    
    switch t
        case 1
            ftype_vec = VecBoxSum(x, y, w, h, W ,H) -VecBoxSum( x, y+h, w, h,W,H);
            'case 1'
        case 2
             ftype_vec = VecBoxSum( x+w, y, w, h,W,H) -VecBoxSum( x, y, w, h,W,H);
             'case 2'
        case 3
            ftype_vec = VecFeature([2,ftype(2:end)],W,H) + VecBoxSum(x+2*w,y,w,h,W,H);
            'case 3'
        case 4
            ftype_vec =  VecFeature([1,ftype(2)+w,ftype(3:end)],W,H) - VecFeature([1,ftype(2:end)],W,H);
            'case 4'
    end
end

