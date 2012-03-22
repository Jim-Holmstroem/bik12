function fs = ExtractSiftDescriptor(im)
    w = size(im, 1);
    sc = (w-2)/ 12;
    fc = [w/2; w/2; sc; 0];
    [fc, fs] = vl_sift(im, 'frames', fc);
    fs = double(fs(:));
end
