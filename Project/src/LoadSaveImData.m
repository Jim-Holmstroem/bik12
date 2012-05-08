function LoadSaveImData(dirname, ni, im_sfn)
    face_fnames = dir(strcat(dirname,'/*.bmp'));

    num_faces = size(face_fnames,1);
    assert(ni<=num_faces);
    rndm = randperm(length(face_fnames));
    fnums = rndm(1:ni);%rndmpick
    saves = ni+1;
    face_selected_fnames = face_fnames(fnums);

    W=20;
    H=20;
    ii_ims=zeros(ni,W*H);


    for it=1:ni

        [im,ii_im]=LoadIm(strcat(dirname,'/',face_selected_fnames(it).name));
        while(isnan(sum(sum(im)))) %if nan try to save
            [im,ii_im]=LoadIm(strcat(dirname,'/',face_fnames(rndm(saves)).name));
            saves=saves+1;
        end
        ii_ims(it,:)=ii_im(:);
    end

save(im_sfn,'dirname','fnums','ii_ims')
end

