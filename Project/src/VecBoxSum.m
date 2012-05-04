function b_vec = VecBoxSum(x, y, w, h, W, H)
    b_vec = sparse(W,H);
    
    x = x+1; %move coordinate system away from zeropadding
    y = y+1;
    
    %some kind of magic, swap(w,h)
    wold=w;
    hold=h;
    w=hold;
    h=wold;
    
    b_vec(x+w-1,y+h-1) = 1;
    b_vec(x-1,y+h-1) = -1;
    b_vec(x+w-1,y-1) = -1;
    b_vec(x-1, y-1) = 1;
    size(b_vec)
    b_vec=b_vec(:);
end
