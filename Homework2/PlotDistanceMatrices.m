function D =  PlotDistanceMatrices(Fs)
    % Fs is the output from ComputeDescriptors.m

    D=cell(1,4);
    names=cell(1,4);
    names{1}='template';
    names{2}='histogram';
    names{3}='gridhistogram';
    names{4}='sift';
    for it=1:4
        subplot(2,2,it);
        Dit = ComputeDistanceMatrix(Fs{it}); 
        imshow(Dit,[min(Dit(:)) max(Dit(:))]);
        title(names{it});
        D{it}=Dit;
    end

end
