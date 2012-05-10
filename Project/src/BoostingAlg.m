function Cparams = BoostingAlg(Fdata,NFdata,FTdata,T)
    m=size(NFdata.fnums,2);
    
    ws=(y==0)/(2*m)+(y~=0)/(2*(n-m));
    fs=VecComputeFeature([faces.ii_ims;nfaces.ii_ims],FTdata.fmat);
    ys=[ones(size(faces.ii_ims,1),1);zeros(size(nfaces.ii_ims,1),1)];
    
    Theta=zeros(T,2);
    alpha=zeros(T,1);
    for it=1:T
        ws=ws/sum(ws);    
        current_best=[0,0,Inf,0];
        for jt=1:size(fs,2) %TODO vectorize and use [.,.]=min(answers)
            current=[LearnWeakClassifer(ws,fs(:,jt),ys), jt]; %train weak classifier with j-th feature
            if(current_best(3)>current(3))
                current_best=current;
            end
        end
        best=current_best; %found the best (non victor BUT VIKTOR)
        theta=best(1);
        p=best(2);
        err=best(3);
        j=best(4);
        
        Theta(it) = [theta,j];
        beta=err/(1-err);
        h=p*fs(:,j)<p*theta; %classify all images with the current feature
        w=w.*(beta.^(1-abs()));
        
        alpha(it) = log(1/beta); %TODO -log(beta)
        
    end
end