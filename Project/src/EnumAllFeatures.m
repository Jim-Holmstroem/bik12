function all_ftypes = EnumAllFeatures(W, H)
    %TODO change to real range! or something!!
    nf = 39929;
    assert(W==19);
    assert(H==19);
    
    all_ftypes=zeros(nf,5);
    
    % type I
    for w = 1:W-2
        for h = 1:floor(H/2)-2
            for x = 1:W-w
                for y = 1:H-2*h
                    all_ftypes(nf,:)=[1, x, y, w, h];
                    nf = nf - 1; %cowboy, doin it backwards
                end
            end
        end
    end
    
    % type II
    for w = 1:floor(W/2)-2
        for h = 1:H-2
            for x = 1:W-2*w
                for y = 1:H-h
                   all_ftypes(nf,:)=[2, x, y, w, h];
                   nf = nf - 1; 
                end
            end
        end
    end
    
    % type III
    for w = 1:floor(W/3)-2
        for h = 1:H-2
            for x = 1:W-3*w
                for y = 1:H-h
                    all_ftypes(nf,:)=[3, x, y, w, h];
                    nf = nf - 1; 
                end
            end
        end
    end
    % type IV
    for w = 1:floor(W/2)-2
        for h = 1:floor(H/2)-2
            for x = 1:W-2*w
                for y = 1:H-2*h
                    all_ftypes(nf,:)=[4, x, y, w, h];
                    nf = nf - 1;
                end
            end
        end
    end
    assert(nf==0);
end