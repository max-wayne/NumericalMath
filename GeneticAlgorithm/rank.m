% 对个体按适应度大小进行排序，并保存最佳个体
% population_size: 种群大小
% chromosome_size: 染色体长度

function rank(population_size)
global fitness_value;  % 种群适应度
global fitness_sum;  % 种群累积适应度
global fitness_average;
global best_fitness;
global best_individual;
global best_generation;
global population;
global G;

% 遍历种群，按适应度升序排列
M=[fitness_value' population];
M=sortrows(M,1);
fitness_value=M(:,1);
population=M(:,2:end);

% fitness_sum(i)=前i个个体的适应度之和
fitness_sum=cumsum(fitness_value);

% fitness_average(G)=第G次迭代个体的平均适应度
fitness_average(G)=mean(fitness_value);

% 更新最大适应度和对应的迭代次数，保存最佳个体（最佳个体的适应度最大）
if fitness_value(population_size) > best_fitness
    best_fitness=fitness_value(population_size);
    best_generation=G;
    best_individual=population(population_size,:);
end
