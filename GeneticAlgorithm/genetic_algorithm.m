% Genetic Algorithm for Functional Maximum Problem
% f(x)=x+10*sin(5*x)+7*cos(4*x), x��[0,9]

% population_size: ������Ⱥ��С
% chromosome_size: ����Ⱦɫ�峤��
% generation_size: �����������
% cross_rate: ���뽻�����
% mutate_rate: ����������
% elitisim: �Ƿ�Ӣѡ��
% m: �����Ѹ���
% n: ��������Ӧ��
% p: �����Ѹ������ʱ�ĵ�������
% q: �����Ѹ����Ա���ֵ

function [m, n, p, q] = genetic_algorithm(population_size, chromosome_size, generation_size, ...
    cross_rate, mutate_rate, elitisim)
global G;  % ��ǰ��������
global fitness_value;  % ��ǰ����Ӧ�Ⱦ���
global best_fitness;  % ���������Ӧֵ
global fitness_average;  % ����ƽ����Ӧֵ����
global best_individual;  % ������Ѹ���
global best_generation;  % ��Ѹ�����ִ�
lower_bound=0; upper_bound=9;

fitness_average = zeros(generation_size, 1);

fitness_value(population_size)=0.0;
best_fitness=0.0;
best_generation=0.0;

init(population_size, chromosome_size);  % ��ʼ��

for G=1:generation_size
    fitness(population_size, chromosome_size);  % ������Ӧ��(����ֵ)
    rank(population_size);  % �Ը��尴����Ӧ�ȴ�С��������
    selection(population_size, elitisim);  % ѡ��
    crossover(population_size, chromosome_size, cross_rate)  % ����
    mutation(population_size, chromosome_size, mutate_rate)  % ����
end

plotGA(generation_size);

m=best_individual;  % ��Ѹ���
n=best_fitness;  % �����Ӧ��
p=best_generation;  % ��Ѹ������ʱ�ĵ�������

q=0;
for j=1:chromosome_size
    if best_individual(j)==1
        q=q+2^(j-1);  % ��Ѹ������������תʮ����
    end
end
q=lower_bound+q*(upper_bound-lower_bound)/(2^chromosome_size-1);
