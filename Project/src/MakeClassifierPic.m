function cpic = MakeClassifierPic(all_ftypes,chosen_f,alphas,ps,W,H)
    cpic = zeros(W,H);

    w=(alphas.*ps);

    for it=1:size(chosen_f,1)
        pic = MakeFeaturePic(all_ftypes(chosen_f(it),:),W,H);
        wpic = w(it)*pic;
        cpic = cpic + wpic;
    end
