function [theta, p, err] = LearnWeakClassifier(ws, fs, ys)
    %   fs = y^j

    mup = (ws.*ys)'*fs/ws'*ys
    mun = (ws.*(1-ys))'*fs/ws'*(1-ys)
    theta=(mup+mun)/2;

    h = [fs<theta;fs>theta]


