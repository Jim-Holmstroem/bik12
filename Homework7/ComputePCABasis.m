function [mu, W, D] = ComputePCABasis(X)
    mu = mean(X,2);
    Xc=X-repmat(mu,[1,size(X,2)]);
    [d,n] = size(X);
    W = zeros(d,1);
    
    if(n < d)
        disp('hard bro')
        C1 = (1/n)*Xc'*Xc;
        [v, d] = eig(C1);
        for i=1:size(v,1)
           W(:,i) = Xc*v(:,i); 
        end
        D = diag(d);
    else
        C = (1/n)*Xc*Xc';
        [v, d] = eig(C);
        D = diag(d);
        W = v; 
    end
   % W = fliplr(W);
end

