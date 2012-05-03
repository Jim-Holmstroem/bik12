function fmat = VecAllFeatures(all_ftypes, W, H)
    fmat = zeros(W*H,size(all_ftypes,1));
    for it=1:size(all_ftypes,1)
        fmat(:,it) = VecFeature(all_ftypes(it,:),W,H);
    end
end