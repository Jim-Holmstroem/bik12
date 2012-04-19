function [X, w, h] = LoadData(DirName, p)
    pics = dir(strcat(DirName,'/*.bmp'));
    [w, h, d] = size(double(GrabCenterPixels(strcat(DirName,'/',pics(1).name), p)));
    X = zeros(w*h,numel(pics));
    for i=1:numel(pics)
        if(d~=1)
            cp = rgb2gray(double(GrabCenterPixels(strcat(DirName,'/',pics(i).name), ...
            p))/256);
        else
            cp = double(GrabCenterPixels(strcat(DirName,'/',pics(i).name), p))/256;
        end
        cp = cp(:);
        cp = (cp - mean(cp))/std(cp);
        X(:,i) = cp;
    end
end
