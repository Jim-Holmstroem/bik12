function fpic = MakeFeaturePic(ftype, W, H)
    fpic = zeros(W,H);
    t=ftype(1);
    x=ftype(2);
    y=ftype(3);
    w=ftype(4);
    h=ftype(5);
    switch t
        case 1
            fpic(y:y+h,x:x+w) = 1;
            fpic(y+h:y+2*h-1,x:x+w) = -1;
        case 2
            fpic(y:y+h,x:x+w) = -1;
            fpic(y:y+h,x+w:x+2*w-1) = 1;
        case 3
            fpic=MakeFeaturePic([2,x,y,w,h],W,H);
            fpic(y:y+h,x+2*w:x+3*w-1) = -1;
        case 4
            fpic=MakeFeaturePic([2,x,y,w,h],W,H)-MakeFeaturePic([2,x,y+h+1,w,h],W,H);
    end
end
