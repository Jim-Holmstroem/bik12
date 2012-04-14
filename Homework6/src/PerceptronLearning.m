function w = PerceptronLearning(X,labs,d1)
    n=0.0001;
    w=rand(size(X,1)+1,1);
    X=[X,ones(size(X,2))];
    y=2*(labs==d1)-1;

    for it=1:size(X,2)
        w=w+n*sum(...
    end

