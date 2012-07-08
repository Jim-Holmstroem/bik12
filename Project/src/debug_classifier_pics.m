function [] = debug_classifier_pics(all_ftypes,chosen_f,alphas,ps,W,H)
    final_img=zeros([numel(chosen_f) 2].*[W,H]);
    cpic = zeros(W,H);
        
    w=(alphas.*ps);
    
    for it=1:numel(chosen_f)
        
        ftype=all_ftypes(chosen_f(it),:);
        pic = MakeFeaturePic(ftype,W,H)'; %fugly transpose
        npic = (pic-min(min(pic)))/(max(max(pic))-min(min(pic)));
        final_img((it-1)*W+1:it*W,1:H) = npic;

        wpic = w(it)*pic;
        cpic = cpic + wpic;
        ncpic = (cpic-min(min(cpic)))/(max(max(cpic))-min(min(cpic)));
        final_img((it-1)*W+1:it*W,H+1:2*H) = ncpic;
    end
    final_img=final_img'; %fugly transpose
    imshow(final_img);
