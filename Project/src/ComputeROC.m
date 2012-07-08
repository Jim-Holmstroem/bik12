function ComputeROC(Cparams,Fdata,NFdata)
    W=20;
    H=20;

    face_fnames = dir(strcat(Fdata.dirname,'/*.bmp'));
    aa=1:length(face_fnames);
    C=setdiff(aa,Fdata.fnums);
    F.ii_ims=zeros(length(C),W*H);
    for k=1:length(C);
        filename =face_fnames(C(k)).name;
        [im ii_im]=LoadIm(strcat(Fdata.dirname,'/',filename));
        F.ii_ims(k,:)=ii_im(:)';
    end

    nface_fnames = dir(strcat(NFdata.dirname,'/*.bmp'));
    aa=1:length(nface_fnames);
    C=setdiff(aa,NFdata.fnums);
    NF.ii_ims=zeros(length(C),W*H);
    for k=1:length(C);
        filename =nface_fnames(C(k)).name;
        [im ii_im]=LoadIm(strcat(NFdata.dirname,'/',filename));
        NF.ii_ims(k,:)=ii_im(:)';
    end

    scsF  = zeros(size(F.ii_ims,1),1);
    scsNF = zeros(size(NF.ii_ims,1),1);
    
    for it=1:size(scsF,1)
        scsF(it)=ApplyDetector(Cparams,F.ii_ims(it,:)');
    end
    for it=1:size(scsNF,1)
        scsNF(it)=ApplyDetector(Cparams,NF.ii_ims(it,:)');
    end
    
    alpha_sum = sum(Cparams.alphas); %largest possible strong classifier response.
    theta.value=0:0.1:alpha_sum; %for the strong classifier
    theta.tpr=zeros(size(theta.value));
    theta.fpr=zeros(size(theta.value));
    
    for it = 1:size(theta.value,2)
        tp=sum(scsF  > theta.value(it));
        fn=sum(scsF  < theta.value(it));
        tn=sum(scsNF < theta.value(it));
        fp=sum(scsNF > theta.value(it));
        
        theta.tpr(it) = tp/(tp+fn);
        theta.fpr(it) = fp/(tn+fp);
    end
    figure();
        plot(theta.fpr,theta.tpr);
        axis equal;
