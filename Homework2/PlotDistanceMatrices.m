function  PlotDistanceMatrices(Fs)
    % Fs is the output from ComputeDescriptors.m

    names=cell(1,4);
    names{1}='template';
    names{2}='histogram';
    names{3}='gridhistogram';
    names{4}='sift';
    for it=1:4
        subplot(2,2,it);
            D = ComputeDistanceMatrix(Fs{it}); 
            imshow(D,[min(D(:)) max(D(:))])
            title(names{it})
    end

end
