function ComputeROC(Cparams,Fdata,NFdata)
    
    scsF  = zeros(size(Fdata.ii_ims,1),1);
    scsNF = zeros(size(NFdata.ii_ims,1),1);
    
    for it=1:size(scsF,1)
        scsF(it)=ApplyDetector(Cparams,Fdata.ii_ims(it,:));
    end
    for it=1:size(scsNF,1)
        scsNF(it)=ApplyDetector(Cparams,NFdata.ii_ims(it,:));
    end
    
    
    theta.value=2:0.1:10;
    theta.tpr=zeros(size(theta.value));
    theta.fpr=zeros(size(theta.value));
    
    for it = 1:size(theta.value,2)
        tp=sum(theta.value(it)<scsF);
        tn=sum(theta.value(it)>scsNF);
        fp=sum(theta.value(it)>scsF);
        fn=sum(theta.value(it)<scsNF);
        theta.tpr(it)=tp/(tp+fn);
        theta.fpr(it)=fp/(fp+tn);
    end
    
    plot(theta.fpr,theta.tpr);