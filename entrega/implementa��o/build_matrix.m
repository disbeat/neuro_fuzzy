function [matrix] = build_matrix(input, output)

nSamples = length(output);
matrix = zeros(nSamples, 5);

for t = 1:nSamples
   
    if t-1 > 0
        matrix(t,1) = output(t-1);
    end
    if t-2 > 0
        matrix(t,2) = output(t-2);
    end
    if t-1 > 0
        matrix(t,3) = input(t-1);
    end
    if t-2 > 0
        matrix(t,4) = input(t-2);
    end
    matrix(t,5) = output(t);

end
