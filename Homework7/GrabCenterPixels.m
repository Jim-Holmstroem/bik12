function cim = GrabCenterPixels(im_fname,p)
	cim = imread(im_fname);
	H=size(cim,1);
	W=size(cim,2);

	cim = cim(floor(H/2)+((-floor(p(1)*H/2)+1):floor(p(1)*H/2)),floor(W/2)+((-floor(p(2)*W/2)+1):floor(p(2)*W/2)),:);
end
