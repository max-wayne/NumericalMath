function plotGA(generation_size)
global fitness_average;
x=1:generation_size; y=fitness_average;
plot(x,y,'-o');
