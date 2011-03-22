function [input, output] = load_data

data = normalizeInput(xlsread('data.xlsx'));

input = data(:,1);
output = data(:,2);

end

function [result] = normalizeInput(data)

maxVal = max(max(data));
minVal = min(min(data));

result = data./(maxVal-minVal);

end