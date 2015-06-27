function [positive,negative]=generate_samples(size)

% this function generates samples of signed digits
% eg: inputting size of the sameples, positive =x+, negative=x-
    

    positive(size,8)=0;
    negative(size,9)=0; %initial two vectors for memory allocation
    
    digit=randi([0 20],size,1); %generates a 1*size array with numbers from 0 to 255(8 bits)
    
    for i=1:size
        cs_number=csdigit(digit(i));
        for j=1:8
            if cs_number(j)=='+'
                positive(i,j)=1;
                negative(i,j)=0;
            end
            if cs_number(j)=='0'
                positive(i,j)=0;
                negative(i,j)=0;
            end
            if cs_number(j)=='-'
                positive(i,j)=0;
                negative(i,j)=1;
            end
        end
    end
    