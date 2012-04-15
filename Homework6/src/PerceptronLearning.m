function w = PerceptronLearning(X,labs,d1)
    n=0.0001;
    
    %w=rand(size(X,1)+1,1);
    w=[1;1;zeros(size(X,1)-1,1)];

    X=[ones(size(X,2),1),X']';
    y=2*(labs==d1)-1; %the right answers

    for it=1:1024
        M=find(sign(w.'*X)~=sign(y)); %missclassified
        w=w+n*sum(X(:,M)*y(M).',2);
    end

