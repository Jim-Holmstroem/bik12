function lvals = GaussLikelihood(xs,mean,Sigma)
    [N,d]=size(xs);
    dxs=xs-repmat(mean,[N 1]);
    

    lvals=arrayfun(@(dx) 1/((2*pi)^(d/2)*det(Sigma)^(1/2))*exp(-1/2*dx*inv(Sigma)*dx'),dxs)
