% ���㽻��
% population_size: ��Ⱥ��С
% chromosome_size: Ⱦɫ�峤��
% cross_rate: �������

function crossover(population_size, chromosome_size, cross_rate)
global population;

% ����Ϊ2 ������Ⱥ
for i=1:2:population_size
    if rand <= cross_rate
        cross_position=round(rand*chromosome_size);
        if cross_position==0 || cross_position==1
            continue;
        end
        % ��cross_position��֮��Ķ����ƴ����н���
        temp=population(i,cross_position:end);
        population(i,cross_position:end)=population(i+1,cross_position:end);
        population(i+1,cross_position:end)=temp;
    end
end
