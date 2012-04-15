function [tp,tn]=TestHyperPlane(X1,labs1,d1,w)
    y=2*(labs1==d1)-1;
    yp=sign(w.'*X1);
    p=find(y==1);
    n=find(y==-1);
    tp=sum(y(p)==yp(p));
    tn=sum(y(n)==yp(n));
    numel(p)
    numel(n)
