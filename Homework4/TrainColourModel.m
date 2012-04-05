function [mu,Sigma] = TrainColourModel(DirName,n)
    im_fnames=dir(DirName);
    dirs_it=[im_fnames.isdir];
    im_fnames={im_fnames(~dirs_it).name}; %pickout all names of nondirs
    cims=[];
    if(nargin<2)
        n=Inf;
    end

    n_pics=min(n,size(im_fnames,2));

    for it=1:n_pics
        filename=strcat(DirName,'/',im_fnames{it});
        centerpic=GrabCenterPixels((filename),0.2);
        cims=[cims;centerpic];	
    end
    rgb_data = double(reshape(cims, [size(cims,1)*size(cims,2), 3]));
    hsv_data = rgb2hsv_mod(rgb_data);
    mu = mean(hsv_data);
    Sigma= cov(hsv_data); 

end
