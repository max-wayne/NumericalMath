% 单点交叉
% population_size: 种群大小
% chromosome_size: 染色体长度
% cross_rate: 交叉概率

function crossover(population_size, chromosome_size, cross_rate)
global population;

% 步长为2 遍历种群
for i=1:2:population_size
    if rand <= cross_rate
        cross_position=round(rand*chromosome_size);
        if cross_position==0 || cross_position==1
            continue;
        end
        % 对cross_position及之后的二进制串进行交换
        temp=population(i,cross_position:end);
        population(i,cross_position:end)=population(i+1,cross_position:end);
        population(i+1,cross_position:end)=temp;
    end
end
