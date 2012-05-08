%% debug1

disp('debug1')
[im,ii_im]=LoadIm('face00001.bmp');
dinfo1=load('debug/debuginfo1.mat');
eps=1e-6;

ii_im=reshape(ii_im(2:end,2:end),[19,19]); %convert to debugformat

s1=sum(abs(dinfo1.im(:) - im(:))>eps);
s2=sum(abs(dinfo1.ii_im(:) - ii_im(:))>eps);

%% debug2

disp('debug2')
dinfo2 = load('debug/debuginfo2.mat');
[im,ii_im]=LoadIm('face00001.bmp');
x = dinfo2.x; y = dinfo2.y; w = dinfo2.w; h = dinfo2.h;

s1=abs(dinfo2.f1 - FeatureTypeI(ii_im, x, y, w, h))
s2=abs(dinfo2.f2 - FeatureTypeII(ii_im, x, y, w, h))
s3=abs(dinfo2.f3 - FeatureTypeIII(ii_im, x, y, w, h))
s4=abs(dinfo2.f4 - FeatureTypeIV(ii_im, x, y, w, h))

%% debug3

disp('debug3')
dinfo3 = load('debug/debuginfo3.mat');
ii_ims=LoadIms('training/FACES');

ftype = dinfo3.ftype;

sum(abs(dinfo3.fs - ComputeFeature(ii_ims, ftype)) > eps)

%% debug4

disp('debug4')
dinfo4 = load('debug/debuginfo4.mat');

ni = dinfo4.ni;
all_ftypes = dinfo4.all_ftypes;
im_sfn = 'FaceData.mat';
f_sfn = 'FeaturesToMat.mat';
stream = RandStream('mt19937ar','seed', dinfo4.jseed);
RandStream.setDefaultStream(stream);
LoadSaveImData('training/FACES', ni, im_sfn);
ComputeSaveFData(all_ftypes, f_sfn);

Fdata = load('FaceData.mat');
FTdata = load('FeaturesToUse.mat');

%% debug5

disp('debug5')
dinfo5 = load('debug/debuginfo5.mat');

np = dinfo5.np;
nn = dinfo5.nn;
all_ftypes = dinfo5.all_ftypes;
stream = RandStream('mt19937ar','seed', dinfo5.jseed);
RandStream.setDefaultStream(stream);
GetTrainingData(all_ftypes, np, nn);

NFdata = load('NonFaceData.mat');
