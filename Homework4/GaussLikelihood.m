function lvals = GaussLikelihood(xs,mean,Sigma)
    [N,d]=size(xs);
    dxs=xs-mean;
    lvals=1/((2*pi)^(d/2)*det(Sigma)^(1/2))*exp(-1/2*dxs'*inv(Sigma)*dxs)
