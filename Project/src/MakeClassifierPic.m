function cpic = MakeClassifierPic(all_ftypes,chosen_f,alphas,ps,W,H)
    cpic = zeros(W,H);
    
    feature = @(i) MakeFeaturePic(all_ftypes(chosen_f(i), :), W, H);


    feature(1:4)
