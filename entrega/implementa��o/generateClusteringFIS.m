function [FIS] = generateClusteringFIS(type, options, data)

xInput = data(:,1:4);
xOutput = data(:,5);

if strcmp( type, 'fcm' )
   args = [ options.exponent options.maxIterations options.minImprovement 1 ];
   FIS = genfis3(xInput, xOutput, 'sugeno', options.clusterNum, args);
else
   args = [ options.squash, options.acceptRatio, options.rejectRatio 1 ];
   FIS = genfis2(xInput, xOutput, options.influenceRange, [], args);
end
