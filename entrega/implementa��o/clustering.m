function [matrix] = clustering(type, options, data)

if strcmp( type, 'fcm' )
   args = [ options.exponent options.maxIterations options.minImprovement 1 ];
   matrix = fcm( data, options.clusterNum, args );
else
   args = [ options.squash, options.acceptRatio, options.rejectRatio 1 ];
   matrix = subclust( data, options.influenceRange, [], args );
end


% save clusterMatrix matrix;
