function cpic = MakeClassifierPic(all_ftypes,chosen_f,alphas,ps,W,H)
    cpic = zeros(W,H);

    w=(alphas.*ps);
    
    for it=1:numel(chosen_f)
        ftype=all_ftypes(chosen_f(it),:);
        pic = MakeFeaturePic(ftype,W,H);
        wpic = w(it)*pic;
        cpic = cpic + wpic;
    end

    cpic = 255*(cpic-min(min(cpic)))/(max(max(cpic))-min(min(cpic)));




