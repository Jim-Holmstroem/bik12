function [ pim, dim ] = MakeDichromatIms( im )
    %UNTITLED Summary of this function goes here
    %   Detailed explanation goes here
    im = double(im);
    im_trans = (im./255).^2.2;
    %Protanopes
    im_prot = 0.992052*im_trans + 0.003974;
    %Deuteranopes
    im_deut = 0.957237*im_trans + 0.0213814;
    M = [17.8824 43.5161 4.11935; 3.45565 27.1554 3.86714; 0.0299566 0.184309 1.46709];
    P = [0 2.02344 -2.52581; 0 1 1; 0 0 1];
    D = [1 0 0; 0.494207 0 1.24827; 0 0 1];
    pim = zeros(size(im_prot));
    dim = zeros(size(im_deut));
    
    M1DM=M^(-1)*D*M; %Precalc transformation
    M1PM=M^(-1)*P*M;
    
    for it = 1:size(im,1)
        for jt = 1:size(im,2)
            dim(it,jt,:) = M1DM*reshape(im_deut(it,jt,:),3,1);
            pim(it,jt,:) = M1PM*reshape(im_prot(it,jt,:),3,1);
        end
    end
    
    minminpim = min(min(pim))
    
    pim = 255*(pim.^(1/2.2));
    dim = 255*(dim.^(1/2.2));
    pim = uint8(pim);
    dim = uint8(dim);
end
