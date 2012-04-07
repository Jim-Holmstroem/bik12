function lvals = GaussLogLikelihood(xs,mean,Sigma)
    [N,d]=size(xs);

    dxs=xs-repmat(mean,[N 1]);

    %fugly
    gauss_i=@(i) -log(2*pi)*(d/2)-log(det(Sigma))/2 -1/2*dxs(i,:)*inv(Sigma)*dxs(i,:)'; 
    lvals=zeros(N,1);
    for it=1:N
        lvals(it)=gauss_i(it);
    end
    
