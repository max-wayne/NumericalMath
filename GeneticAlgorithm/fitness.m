% ������Ⱥ�������Ӧ��
% population_size: ��Ⱥ��С
% chromosome_size: Ⱦɫ�峤��

function fitness(population_size, chromosome_size)
global fitness_value;
global population;

lower_bound=0; upper_bound=9;

% ������Ⱥ������Ӧ�ȳ�ʼ��Ϊ0
fitness_value=zeros(1,population_size);

% f(x)=-x-10*sin(5*x)-7*cos(4*x);
for i=1:population_size
    for j=1:chromosome_size
        if population(i,j)==1
            fitness_value(i)=fitness_value(i)+2^(j-1);
        end
    end
    fitness_value(i)=lower_bound+fitness_value(i)*(upper_bound-lower_bound)/(2^chromosome_size-1);  % ������תʮ����
    fitness_value(i)=fitness_value(i)+10*sin(5*fitness_value(i))+7*cos(4*fitness_value(i));
end

    
    
            
            
            

