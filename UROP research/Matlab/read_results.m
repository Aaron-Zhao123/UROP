function [results]=read_results(data,size)

ONLINE_DELAY=4;
Number_of_bits=8;
%1 cycle of initilization
%2 cycles of addition dealy

new_data(1:size)=0;

for i=1:(size-ONLINE_DELAY)
    new_data(i)=data(i+ONLINE_DELAY);
end

tmpword(1:Number_of_bits)=0;
tmpwords(1:round((size-ONLINE_DELAY)/Number_of_bits))=0;


for i=1:round((size-ONLINE_DELAY)/Number_of_bits) %computer words
    for j=1:Number_of_bits
        tmpword(j)=mod(round(new_data((i-1)*Number_of_bits+j)/10),10)-mod(new_data((i-1)*Number_of_bits+j),10);
    end
    
    for j=1:Number_of_bits
    tmpwords(i)=tmpwords(i)+ 2^(j-1)*tmpword(Number_of_bits+1-j);
    end
end

results=tmpwords;


    
















