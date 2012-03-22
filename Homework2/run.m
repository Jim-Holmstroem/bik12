cd vlfeat-0.9.14/toolbox/
vl_setup
cd ../..

dirs=cell(1,2);
dirs{1}='Pics/Aligned_Pics/';
dirs{2}='Pics/Misaligned_Pics/';
dirs

nbins=30;
ng=2;

for it=1:2
    figure(it);
    PlotDistanceMatrices(ComputeDescriptors(dirs{it},nbins,ng));
end

