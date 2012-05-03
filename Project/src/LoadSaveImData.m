function LoadSaveImData(dirname, ni, im_sfn)
    face_fnames = dir('FACES');
    aa = 3:length(face_fnames);
    a = randperm(length(aa));
    fnums = aa(a(1:ni));

end

