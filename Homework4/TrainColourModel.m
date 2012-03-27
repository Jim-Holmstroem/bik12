function [mu,Sigma] = TrainColourModel(DirName,n)
	im_fnames=dir(DirName);
	cims=[]
	for it=1:size(im_fnames)
		cims=[cims;GrabCenterPixels(im_fnames,0.3)];	
	end
	rgb_data = reshape(cims, [size(cims,1)*size(cims,2), 3]);
	rgb_mean = 



end
