[X,labs,w,h]=LoadData('DData');
X_test=X(:,1:size(X,2)/2);
labs_test=labs(:,1:size(X,2)/2);
X_train=X(:,size(X,2)/2+1:size(X,2));
labs_train=labs(:,size(X,2)/2+1:size(X,2));

w_d = @(d1) PerceptronLearning(X_train,labs_train,d1);

digits=0:9;

for digit=digits
end

for digit=digits
    w=PerceptronLearning(X_train,labs_train,digit);
    [tp,tn]=TestHyperPlane(X_test,labs_test,digit,w);
    disp(strcat(num2str(digit),',',num2str(tp),',',num2str(tn)));  
end
