function fs = ExtractGridHistogram(im, ng, nbins)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    fs = [];
    col_im = imread(im);
    im = single(rgb2gray(col_im));
    %im = (im - mean(im(:)))/std(im(:));
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

