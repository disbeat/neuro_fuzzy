function [avgError output testOutput] = anfis_test(clusteringType, ...
                               clusteringOptions, ...
                               trainingOptions, ...
                               useManual)

if (nargin < 3)
    trainingOptions = struct();
    trainingOptions.epochNumber = 10;
    trainingOptions.errorGoal = 0;
    trainingOptions.initialStep = 0.01;
    trainingOptions.stepDecreaseRate = 0.9;
    trainingOptions.epochNumber = 1.1;
end
                           
if (nargin < 4)
    useManual = false;
end

[initialOutput expectedOutput] = load_data;
initialMatrix = build_matrix(initialOutput, expectedOutput);

if (~useManual)
trainingArgs = [trainingOptions.epochNumber, ...
                trainingOptions.errorGoal, ...
                trainingOptions.initialStep, ...
                trainingOptions.stepDecreaseRate, ...
                trainingOptions.epochNumber];
end
nExperiments = 20;
totalError = 0;

if useManual
   manualFIS = generateManualFIS; 
end

for experiment = 1:nExperiments
    [trainCases testCases testOutput checkCases] = splitData(initialMatrix);
    
    if useManual
        FIS = manualFIS;
    else
        initFIS = generateClusteringFIS(clusteringType, clusteringOptions, trainCases);
        FIS = anfis(trainCases, initFIS, trainingArgs, [0 0 0 0], checkCases);
    end
    
    output = evalfis(testCases, FIS);
    error = sum((output - testOutput).^2);
    totalError = totalError + error;
    
     plotOutput(output, testOutput);
end

avgError = totalError / nExperiments;

save FIS FIS;

function plotOutput(output, expected)
clf('reset');
figure(2);
plot(output, 'g');
hold on;
plot(expected, 'r');