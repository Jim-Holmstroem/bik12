function Cparams = BoostingAlg(Fdata,NFdata,FTdata,T)
    mn=size(NFdata.fnums,2);
    mp=size(Fdata.fnums,2);
    
    fs=VecComputeFeature([Fdata.ii_ims;NFdata.ii_ims],FTdata.fmat);
    ys=[ones(size(Fdata.ii_ims,1),1);zeros(size(NFdata.ii_ims,1),1)];
    ws=(ys==0)/(2*mn)+(ys~=0)/(2*mp);
    
    Cparams.all_ftypes=FTdata.all_ftypes;
    Cparams.fmat=FTdata.fmat;
    
    Theta=zeros(T,2);
    alpha=zeros(T,1);
    for it=1:T
        ws=ws/sum(ws);    
        current_best=[0,0,Inf,0];
        for jt=1:size(fs,2) %TODO vectorize and use [.,.]=min(answers)
            [theta,p,err]=LearnWeakClassifier(ws,fs(:,jt),ys); %train weak classifier with j-th feature
            current=[theta,p,err,jt];
            if(current_best(3)>current(3))
                current_best=current;
            end
        end
        best=current_best; %found the best (non victor BUT VIKTOR)
        theta=best(1);
        p=best(2);
        err=best(3);
        j=best(4);
        
        Theta(it,:) = [theta;j];
        beta=err/(1-err);
        h=p*fs(:,j)<p*theta; %classify all images with the current feature
        ws=ws.*(beta.^(1-abs(h-ys)));
        alpha(it) = log(1/beta); %TODO -log(beta)
    end
    
    Cparams.alphas=alpha;
    Cparams.Thetas=Theta;
    
end