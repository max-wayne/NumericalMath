% 计算种群个体的适应度
% population_size: 种群大小
% chromosome_size: 染色体长度

function fitness(population_size, chromosome_size)
global fitness_value;
global population;

lower_bound=0; upper_bound=9;

% 所有种群个体适应度初始化为0
fitness_value=zeros(1,population_size);

% f(x)=-x-10*sin(5*x)-7*cos(4*x);
for i=1:population_size
    for j=1:chromosome_size
        if population(i,j)==1
            fitness_value(i)=fitness_value(i)+2^(j-1);
        end
    end
    fitness_value(i)=lower_bound+fitness_value(i)*(upper_bound-lower_bound)/(2^chromosome_size-1);  % 二进制转十进制
    fitness_value(i)=fitness_value(i)+10*sin(5*fitness_value(i))+7*cos(4*fitness_value(i));
end

    
    
            
            
            

