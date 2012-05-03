function b_vec = VecBoxSum(x, y, w, h, W, H)
    b_vec = sparse(W,H);
    x = x+1;
    y = y+1;
    
    %some kind of magic
    wold=w;
    hold=h;
    w=hold;
    h=wold;
    
    
    
    %a[x,y]=a(:)[(x-1)H+y]
    %b_vec((x+w-1),(y+h-1)) = 1;
    %b_vec((x-1),(y+h-1)) = -1;
    %b_vec((x+w-1),(y-1)) = -1;
    %b_vec((x-1),(y-1)) = 1;
    
    
    b_vec(x+w-1,y+h-1) = 1;
    b_vec(x-1,y+h-1) = -1;
    b_vec(x+w-1,y-1) = -1;
    b_vec(x-1, y-1) = 1;
    b_vec=b_vec(:);
end