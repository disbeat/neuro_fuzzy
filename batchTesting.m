function batchTesting
   
possibilities = struct();

type = 'subclust';
possibilities.influenceRange = [0.15 0.3 0.5];
possibilities.squash = [1 1.25 1.5];
possibilities.acceptRatio = [0.25 0.5 0.75 1];
possibilities.rejectRatio = [0.10 0.25 0.5];
fieldnames = {'influenceRange' 'squash' 'acceptRatio' 'rejectRatio'};

% type = 'fcm';
% possibilities.clusterNum = [2 5 10 30 100];
% possibilities.maxIterations = [20 100 300];
% possibilities.minImprovement = [1e-2 1e-5 1e-10];
% possibilities.exponent = [1.2 2.0 3.0 5.0];
% fieldnames = {'clusterNum' 'maxIterations' 'minImprovement' 'exponent'};

FILENAME = [type '_results.csv'];

file = fopen(FILENAME,'w');
fprintf(file, 'type;');
for field = fieldnames
    fprintf(file, '%s;',char(field));
end
fprintf(file, 'error\n');
fclose(file);

test(FILENAME, type, possibilities, fieldnames, 1, struct() );

function test(FILENAME, type, possibilities, fieldnames, fieldIndex, options)

nFields = length(fieldnames);

if fieldIndex <= nFields

    field = fieldnames{fieldIndex};
    for possibility = possibilities.(field);
       options.(field) = possibility;
       test(FILENAME, type, possibilities, fieldnames, fieldIndex+1, options);
    end
    
else    
    
    error = anfis_test(type, options);
    disp(['Error = ' num2str(error)]);

    file = fopen(FILENAME,'a');
    fprintf(file, '%s;', type);
    for field = fieldnames
        fprintf(file, '%f;', options.(char(field)));
    end
    fprintf(file, '%.12f\n', error);
    fclose(file);
    
end
