function [mu,Sigma] = TrainColourModel(DirName,p,n)
    %
    % Important for the caching to work is that no trailing / would accour.
    %
    %

    cache_filename=strcat(DirName,'.mat');

    if(~exist(cache_filename))
        im_fnames=dir(DirName);
        dirs_it=[im_fnames.isdir];
        im_fnames={im_fnames(~dirs_it).name}; %pickout all names of nondirs
        cims=[];
        if(nargin<3)
            n=Inf;
        end
        if(nargin<2)
            p=1.0;
        end

        n_pics=min(n,size(im_fnames,2));

        for it=1:n_pics
            filename=strcat(DirName,'/',im_fnames{it});
            centerpic=GrabCenterPixels((filename),p);
            cims=[cims;reshape(centerpic,size(centerpic,1)*size(centerpic,2),3)];	
        end
        rgb_data = double(cims);
        
        %figure();
        %N=1024;
        %plot3(rgb_data(1:N,1),rgb_data(1:N,2),rgb_data(1:N,3),'*')
        
        hsv_data = rgb2hsv_mod(rgb_data);
        
        %figure();
        %plot3(hsv_data(1:N,1),hsv_data(1:N,2),hsv_data(1:N,3),'*')
        
        mu = mean(hsv_data);
        Sigma= cov(hsv_data); 
        save(cache_filename,'mu','Sigma');
    else
        disp(strcat('Using cacheddata on ',DirName));
        load(cache_filename,'mu','Sigma');
    end

end
