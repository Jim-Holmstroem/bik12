function [] = imshow_normalised(img,w,h)
    imshow((reshape(img,w,h)-min(img))/(max(img)-min(img)));
end

