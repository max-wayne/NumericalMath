% 轮盘赌选择操作
% population_size: 种群大小
% chromosome_size: 染色体长度
% elitisim: 是否精英选择

function selection(population_size, elitisim)
global population;  % 当代种群
global population_new;  % 新一代种群
global fitness_sum;  % 种群累积适应度

for i=1:population_size
    r=rand*fitness_sum(population_size);
    idx=find(fitness_sum>=r,1,'first');  
    population_new(i,:)=population(idx,:);  % 产生新一代个体
end

% 是否精英选择
if elitisim
    % 如果精英选择，将population中前population_size-1个个体更新，最后一个最优个体保留
    p=population_size-1;
else
    p=population_size;
end
population(1:p,:)=population_new(1:p,:);
