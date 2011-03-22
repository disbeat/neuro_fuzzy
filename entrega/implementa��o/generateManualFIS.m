function [manualFIS] = generateManualFIS()

% Este ficheiro explica os diferentes passos para gerar o controlador
% manual


% Em primeiro lugar, cria-se a matriz de dados

[initialInput expectedOutput] = load_data;
initialMatrix = build_matrix(initialInput, expectedOutput);


% Dividar os dados para ter conjuntos aleatórios de 60% para treino, 30%
% para teste e 10% para check

[trainCases testCases testOutput check] = splitData(initialMatrix);


% Fazer o clustering dos dados de treino para obter os centroides
% facilitando a geração de regras

options = struct();

options.influenceRange = 0.9;
options.squash = 1;
options.acceptRatio = 0.5;
options.rejectRatio = 0.25;

CLUSTERS = clustering('subclust', options, trainCases);


% Agora que temos os clusters, podemos criar o controlador sugeno manual

% DEPOIS DE CRIADO e salvo para o ficheiro manualFIS.fis, podemos fazer
% load e devolver como return value da função

manualFIS = readfis('manualFIS.fis');
