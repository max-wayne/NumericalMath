% ���̶�ѡ�����
% population_size: ��Ⱥ��С
% chromosome_size: Ⱦɫ�峤��
% elitisim: �Ƿ�Ӣѡ��

function selection(population_size, elitisim)
global population;  % ������Ⱥ
global population_new;  % ��һ����Ⱥ
global fitness_sum;  % ��Ⱥ�ۻ���Ӧ��

for i=1:population_size
    r=rand*fitness_sum(population_size);
    idx=find(fitness_sum>=r,1,'first');  
    population_new(i,:)=population(idx,:);  % ������һ������
end

% �Ƿ�Ӣѡ��
if elitisim
    % �����Ӣѡ�񣬽�population��ǰpopulation_size-1��������£����һ�����Ÿ��屣��
    p=population_size-1;
else
    p=population_size;
end
population(1:p,:)=population_new(1:p,:);
