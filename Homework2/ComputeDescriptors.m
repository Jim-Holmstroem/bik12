function Fs = ComputeDesciptors(DirName,nbins,ng)
    picnames=[DirName,'/*.png']; 
    im_files=dir(picnames);
    ni = length(im_files);
    ims= cell(1,ni);
    addpath(DirName);
    for it=1:ni
        col_im = imread(im_files(it).name);
        im = single(rgb2gray(col_im));
        ims{it} = (im - mean(im(:)))/std(im(:));
    end
    Fs = cell(1,4);
    for it=1:size(ims,2)
        
        im=ims{it};
        imshow(im);
        fs1=im(:);
        fs2=hist(fs1,nbins);
        fs2=fs2(:)/sum(fs2); %Not okey, but it works
        fs3=ExtractGridHistogram(im,ng,nbins,0);
        fs4=ExtractSiftDescriptor(im);
        %Save into Fs
        Fs{1} = [Fs{1}, fs1];
        Fs{2} = [Fs{2}, fs2];
        Fs{3} = [Fs{3}, fs3];
        Fs{4} = [Fs{4}, fs4];
    end
end
