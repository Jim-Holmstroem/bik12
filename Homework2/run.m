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
    plocka in den i D[it] fast med cellerD=PlotDistanceMatrices( ComputeDescriptors(dirs{it},nbins,ng) );
    
end

sumdiag=sum(diag(D{1}))
sumtrans=sum(sum(D{1}-D{1}'))

ni=80;
Y = mdscale(D{1},2);
figure(3);
plot(Y(1:ni/2,1),Y(1:ni/2,2),'rx','MarkerSize',10);
hold on;
plot(Y((ni/2+1):end,1),Y((ni/2+1):end,2),'bo','MarkerSize',10);
axis equal;


