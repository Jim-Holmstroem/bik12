function cpic = MakeClassifierPic(all_ftypes,chosen_f,alphas,ps,W,H)
    cpic = zeros(W,H);

    w=(alphas.*ps);

    size(chosen_f)
    
    for it=1:size(chosen_f,2)
        ftype=all_ftypes(chosen_f(it),:);
        pic = MakeFeaturePic(ftype,W,H);
        wpic = w(it)*pic;
        cpic = cpic + wpic;
    end
