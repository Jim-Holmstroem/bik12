function [theta, p, err] = LearnWeakClassifier(ws, fs, ys)

    mup = ((ws.*ys)'*fs)/(ws'*ys);
    mun = ((ws.*(1-ys))'*fs)/(ws'*(1-ys));

    theta=(mup+mun)/2;

    h = [fs<theta,fs>theta];

    e = [ws'*abs(ys-h(:,1));ws'*abs(ys-h(:,2))];
    
    [err p]=min(e);
    p = (p==1)-(p==2);
end
