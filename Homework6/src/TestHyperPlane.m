function [tp,tn]=TestHyperPlane(X,labs1,d1,w)

    X=[ones(size(X,2),1),X']';
    
    y=2*(labs1==d1)-1;
    yp=sign(w'*X);

    p=find(y==1);
    n=find(y==-1);
    tp=sum(y(p)==yp(p));
    tn=sum(y(n)==yp(n));
