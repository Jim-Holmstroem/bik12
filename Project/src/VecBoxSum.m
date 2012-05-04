function b_vec = VecBoxSum(x, y, w, h, W, H)
    b_vec = sparse(W,H);
    x = x+1; %move coordinate system away from zeropadding
    y = y+1;
    
    b_vec(y+h-1,x+w-1) = 1;
    b_vec(y+h-1,x-1) = -1;
    b_vec(y-1,x+w-1) = -1;
    b_vec(y-1,x-1) = 1;
    b_vec=b_vec(:);
end
