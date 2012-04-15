[X,labs,w,h]=LoadData('DData');
X_test=X(:,1:size(X,2)/2);
labs_test=labs(:,1:size(X,2)/2);
X_train=X(:,size(X,2)/2+1:size(X,2));
labs_train=labs(:,size(X,2)/2+1:size(X,2));

w_d = @(d1) PerceptronLearning(X_train,labs_train,d1);

digits=0:9;

W=zeros(size(X,1)+1,numel(digits));
for it=digits
    W(:,it+1)=PerceptronLearning(X_train,labs_train,it);
end

for digit=digits
    [tp,tn]=TestHyperPlane(X_test,labs_test,digit,W(digit+1));
    disp(strcat(num2str(digit),',',num2str(tp),',',num2str(tn)));  
end
