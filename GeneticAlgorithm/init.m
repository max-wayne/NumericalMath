% 初始化种群
% population_size: 种群大小
% chromosome_size: 染色体长度

function init(population_size, chromosome_size)
global population;
population=round(rand(population_size,chromosome_size));
