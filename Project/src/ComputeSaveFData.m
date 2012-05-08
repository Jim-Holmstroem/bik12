function ComputeSaveFData(all_ftypes,f_sfn)
    W=20;
    H=20;
    fmat = VecAllFeatures(all_ftypes,20,20);
    save(f_sfn,'fmat','all_ftypes','W','H')
