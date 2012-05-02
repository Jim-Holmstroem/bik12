function ii_ims = LoadIms(dir_name)
    pics = dir(strcat(dir_name,'/*.bmp'));
    no hardcoded numbers dude
    ii_ims = cell(1,100);
     for i=1:100
            [im, ii_im] = LoadIm(pics(i).name);
            ii_ims{1,i} = ii_im;
     end
end
