function D = ComputeDistanceMatrix(Fs)
    nf=size(Fs,2);
    D = zeros(nf);

    for it=1:nf
        for jt=1:nf
            f1=Fs(:,it);
            f2=Fs(:,jt);

            D(it,jt)=sqrt(sum((f1 - f2).*(f1 - f2)));
        end
    end
end
