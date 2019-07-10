clear; clc;
% Ref: https://www.zhihu.com/question/23293449/answer/120220974
elitism=true;  % ѡ��Ӣ����
population_size=100;  % ��Ⱥ��С
chromosome_size=17;  % Ⱦɫ�峤��
generation_size=200;  % ����������
cross_rate=0.6;  % �������
mutate_rate=0.01;  % �������

[best_individual, best_fitness, iterations, x] = ...
genetic_algorithm(population_size, chromosome_size, generation_size, cross_rate, mutate_rate, elitism);

disp ���Ÿ���: 
disp(best_individual);
disp ������Ӧ��:
disp(best_fitness);
disp ���Ÿ����Ӧ�Ա���ֵ:
disp(x);
disp �ﵽ���Ž���ĵ�������:
disp(iterations);
