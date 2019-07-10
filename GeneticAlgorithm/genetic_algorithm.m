% Genetic Algorithm for Functional Maximum Problem
% f(x)=x+10*sin(5*x)+7*cos(4*x), x∈[0,9]

% population_size: 输入种群大小
% chromosome_size: 输入染色体长度
% generation_size: 输入迭代次数
% cross_rate: 输入交叉概率
% mutate_rate: 输入变异概率
% elitisim: 是否精英选择
% m: 输出最佳个体
% n: 输出最佳适应度
% p: 输出最佳个体出现时的迭代次数
% q: 输出最佳个体自变量值

function [m, n, p, q] = genetic_algorithm(population_size, chromosome_size, generation_size, ...
    cross_rate, mutate_rate, elitisim)
global G;  % 当前迭代次数
global fitness_value;  % 当前代适应度矩阵
global best_fitness;  % 历代最佳适应值
global fitness_average;  % 历代平均适应值矩阵
global best_individual;  % 历代最佳个体
global best_generation;  % 最佳个体出现代
lower_bound=0; upper_bound=9;

fitness_average = zeros(generation_size, 1);

fitness_value(population_size)=0.0;
best_fitness=0.0;
best_generation=0.0;

init(population_size, chromosome_size);  % 初始化

for G=1:generation_size
    fitness(population_size, chromosome_size);  % 计算适应度(函数值)
    rank(population_size);  % 对个体按照适应度大小进行排序
    selection(population_size, elitisim);  % 选择
    crossover(population_size, chromosome_size, cross_rate)  % 交叉
    mutation(population_size, chromosome_size, mutate_rate)  % 变异
end

plotGA(generation_size);

m=best_individual;  % 最佳个体
n=best_fitness;  % 最佳适应度
p=best_generation;  % 最佳个体出现时的迭代次数

q=0;
for j=1:chromosome_size
    if best_individual(j)==1
        q=q+2^(j-1);  % 最佳个体变量二进制转十进制
    end
end
q=lower_bound+q*(upper_bound-lower_bound)/(2^chromosome_size-1);
