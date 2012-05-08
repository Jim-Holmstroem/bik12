function GetTrainingData(all_ftypes,np,nn)
    LoadSaveImData('training/FACES',np,'FaceData');
    LoadSaveImData('training/NFACES',nn,'NonFaceData');
    ComputeSaveFData(all_ftypes,'FeaturesToUse');
