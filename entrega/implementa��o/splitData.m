function [train testInput testOutput check] = splitData(matrix)
nCases = length(matrix);
nTrain = round(nCases * 0.6); % 60 / 30 / 10
nTest = nTrain + round(nCases * 0.3);  

shuffleCases = matrix(randperm(nCases),:);
train = shuffleCases(1:nTrain,:);
test = shuffleCases(nTrain+1:nTest,:);
check = shuffleCases(nTest+1:end,:);

testInput = test(:,1:4);
testOutput = test(:,5);

