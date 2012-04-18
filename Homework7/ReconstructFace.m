function rim = ReconstructFace(im, mu, W, w, h, N)
    im_size = size(im);
    im = imresize(im,[w,h]);
    im = im(:);
    im_mean = mean(im);
    im_std = std(im);
    im = (im-im_mean)/im_std;
    %im = im -mu;
    Wm=W(:,1:N);
    C = Wm*(Wm'*im);
    C = C(:);
    rim = C*im_std+im_mean;
    rim = reshape(rim,[h,w]);
    rim = imresize(rim,im_size);
end