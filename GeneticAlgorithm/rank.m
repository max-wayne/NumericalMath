% �Ը��尴��Ӧ�ȴ�С�������򣬲�������Ѹ���
% population_size: ��Ⱥ��С
% chromosome_size: Ⱦɫ�峤��

function rank(population_size)
global fitness_value;  % ��Ⱥ��Ӧ��
global fitness_sum;  % ��Ⱥ�ۻ���Ӧ��
global fitness_average;
global best_fitness;
global best_individual;
global best_generation;
global population;
global G;

% ������Ⱥ������Ӧ����������
M=[fitness_value' population];
M=sortrows(M,1);
fitness_value=M(:,1);
population=M(:,2:end);

% fitness_sum(i)=ǰi���������Ӧ��֮��
fitness_sum=cumsum(fitness_value);

% fitness_average(G)=��G�ε��������ƽ����Ӧ��
fitness_average(G)=mean(fitness_value);

% ���������Ӧ�ȺͶ�Ӧ�ĵ���������������Ѹ��壨��Ѹ������Ӧ�����
if fitness_value(population_size) > best_fitness
    best_fitness=fitness_value(population_size);
    best_generation=G;
    best_individual=population(population_size,:);
end
