function [] = feature_response(faces,nfaces,ftdata,feature_num)

    %faces=load('FaceData');
    %nfaces=load('NonFaceData');
    %ftdata=load('FeaturesToUse');

    %feature=ftdata.fmat(:,1057); %choose a (probably) good feature
    feature=(ftdata.fmat(:,feature_num));

    fs=VecComputeFeature([faces.ii_ims;nfaces.ii_ims],feature);
    ys=[ones(size(faces.ii_ims,1),1);zeros(size(nfaces.ii_ims,1),1)];
    ws=ones(size(ys))/size(ys,1); %unweighted

    fsp=fs(find(ys));
    fsn=fs(find(~ys));

    [theta,p,err]=LearnWeakClassifier(ws,fs,ys);

    [nfsp,xfsp]=hist(fsp);
    [nfsn,xfsn]=hist(fsn);

    plot(xfsp,nfsp/numel(fsp),'r')
    hold on;
    plot(xfsn,nfsn/numel(fsn),'g')
    plot([theta theta],[0 0.5],'b')

