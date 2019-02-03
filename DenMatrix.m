D = zeros(Partition_Number*sides,Partition_Number*sides);
    for i = 1:(Partition_Number*sides)
        for j = 1:(Partition_Number*sides)
            if i == 1 && j == 1
                D(i,j) = randi(25,1,1);
            elseif i == 1
                D(i,j) = abs(randi([D(i,j-1)-5,D(i,j-1)+5],1,1));
                
            else
                D(i,j) = abs(randi([D(i-1,j)-5,D(i-1,j)+5],1,1));
            end
        end
    end
save('Density.mat','D')
