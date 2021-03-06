function [Agent_Positions, Density] = Density_Position_Generator(Number_of_Robots, Density_Type,sides, Partition_Number)
syms x y z
if Density_Type == 1
    Density = rand()*x^(randi(20,1,1))+rand()*y^(randi(21,1,1));
elseif Density_Type == 2
    Density = zeros(Partition_Number*sides,Partition_Number*sides);
    for t = 0:2*pi
        for i = 1:(Partition_Number*sides)
            for j = 1:(Partition_Number*sides)
                Density(i,j) = randi(100,1,1)sin(t);
        end
    end
end

Agent_Positions = zeros(Number_of_Robots,2);
for i = 1:Number_of_Robots
    Agent_Positions(i,1) = rand(1,1)*(sides);
    Agent_Positions(i,2) = rand(1,1)*(sides);
end

end

