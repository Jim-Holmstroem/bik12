function [X,labs,w,h]=LoadData(DirName)
    imgs=dir(strcat(DirName,'/*.png'));

    cims=[];

    for it=1:numel(imgs)
        %getting metadata from the filename itself
        info=regexp(imgs(it).name,'(test|train)_digit(\d*)_(\d*)','tokens');
        info=info{1};
        if(numel(info)~=3)
            error(strcat(imgs(it).name,' is malformed filename-format'));
        end
        imgs(it).istest=strcmp(info(1),'test');
        imgs(it).digit=info(2);
        imgs(it).id=info(3);

        %load the actual data
        imgs(it).name=strcat(DirName,'/',imgs(it).name); %add folder
        imgs(it).data=double(imread(imgs(it).name));
        [imgs(it).w,imgs(it).h]=size(imgs(it).data);
        imgs(it).data=imgs(it).data(:);
        imgs(it).data=(imgs(it).data-mean(imgs(it).data))/std(imgs(it).data);

    end
    %assuming all images has the same dimension
    w=imgs(1).w;
    h=imgs(1).h;

    X=zeros(size(imgs(1).data,1),numel(imgs)); %preallocate
    labs=[imgs.digit];
    
    for it=1:numel(imgs)
        X(:,it)=imgs(it).data;
    end
