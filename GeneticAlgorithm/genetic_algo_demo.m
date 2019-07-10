clear; clc;
% Ref: https://www.zhihu.com/question/23293449/answer/120220974
elitism=true;  % 选择精英操作
population_size=100;  % 种群大小
chromosome_size=17;  % 染色体长度
generation_size=200;  % 最大迭代次数
cross_rate=0.6;  % 交叉概率
mutate_rate=0.01;  % 变异概率

[best_individual, best_fitness, iterations, x] = ...
genetic_algorithm(population_size, chromosome_size, generation_size, cross_rate, mutate_rate, elitism);

disp 最优个体: 
disp(best_individual);
disp 最优适应度:
disp(best_fitness);
disp 最优个体对应自变量值:
disp(x);
disp 达到最优结果的迭代次数:
disp(iterations);
