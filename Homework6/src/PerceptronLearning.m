function w = PerceptronLearning(X,labs,d1)
    n=0.0001;
    
   % w=(2.0*rand(size(X,1)+1,1)-1);
    w=[1;1;zeros(size(X,1)-1,1)];

    X=[ones(size(X,2),1),X']';
    y=2*(labs==d1)-1; %the right answers

    for it=1:1024*8

        M=find(sign(w.'*X)~=sign(y)); %missclassified

        if(numel(M)==0)
            break;
        end
        w=w+n*X(:,M)*y(M).';
    end


