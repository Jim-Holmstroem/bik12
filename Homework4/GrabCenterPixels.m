function cim = GrabCenterPixels(im_fname,p)
	cim = imread(im_fname);
        size(cim)
	H=size(cim,1);
	W=size(cim,2);
	cim = cim(H/2+((-floor(p*H/2)+1):floor(p*H/2)),W/2+((-floor(p*W/2)+1):floor(p*W/2)),:);
end
