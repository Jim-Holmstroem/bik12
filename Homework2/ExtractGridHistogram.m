function fs = ExtractGridHistogram(im, ng, nbins,ispath)
    % If ispath=0 then it takes a GRAYSCALE IMAGE
    %
    %

    if(nargin < 4)
        ispath=1
    end
    
    fs = [];
    if(ispath)
        im = imread(im);
        im = single(rgb2gray(im));
    end
    
    im = (im - mean(im(:)))/std(im(:));
    xs = floor(linspace(1, size(im, 2)+1, ng+1));
    ys = floor(linspace(1, size(im, 1)+1, ng+1));
    for i=1:ng
        ii = xs(i):xs(i+1)-1;
        for j=1:ng
            jj = ys(j):ys(j+1)-1;
            pim = im(jj, ii);
            tempfs = hist(pim(:), nbins);
            tempfs = tempfs(:)/sum(tempfs);
            fs = [fs;tempfs];
        end
    end
end

