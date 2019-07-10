% 单点变异
% population_size: 种群大小
% chromosome_size: 染色体长度
% mutate_rate: 变异概率

function mutation(population_size, chromosome_size, mutate_rate)
global population;

for i=1:population_size
    if rand <= mutate_rate
        mutate_position=round(rand*chromosome_size);
        if mutate_position==0
            continue;
        end
        population(i,mutate_position)=1-population(i,mutate_position);
    end
end
