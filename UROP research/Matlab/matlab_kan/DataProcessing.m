function [sum_dec] = DataProcessing(filename,Permutation)
%data processing
% results are saved in sum_real


% test ------------------------------------------------
% clear;
% clc;
% filename=strcat('./AutoTest/PR/SumPR_WL8_T850.txt');
% %filename=strcat('./EF/Sum_WL8_EF.txt');
% %sum{1,1}{1,1}='10001011';
% Permutation=1;
%------------------------------------------------------
fid=fopen(filename);
sum=textscan(fid,'%s'); %readin as string, return as a cell


%%row_sum=length(sum{1,1});   % # of rows of the cell
row_sum=Permutation;
col_sum=length(sum{1,1}{1,1});  %# of columns of the cell

sum_tc=zeros(1,col_sum/2);  %LSB to MSB
 
%parfor j=1:row_sum
for j=1:1:row_sum
    sum_tc=zeros(1,col_sum/2);
    int_bit = 0;    %integer bit, positive number
    for i=2:2:col_sum
        bit_str=sum{1,1}{j,1}(i-1:i);
        bit_num=str2num(bit_str);
        if (bit_num==10)   
            sum_tc(1,i/2)=1;
        elseif (bit_num==1)            
            if isempty(find(sum_tc,1,'last'));
                
                idx_col = 1;    %in case -1 is the first number
                int_bit = 1;    %integer bit, negative number
            else                              
                idx_col=find(sum_tc,1,'last');                
            end
            sum_tc(1,idx_col:i/2)=xor(sum_tc(1,idx_col:i/2),1);            
        else            
            sum_tc(1,i/2)=0;
        end
    end
    sum_temp(j,:)=[int_bit,sum_tc];
end
disp('Process sum_temp: done')
[row,col]=size(sum_temp);
%sum_bin=zeros(row,1);
sum_dec=zeros(row,1);
for j=1:1:row
    for i=1:1:col
        %sum_bin(j)=sum_bin(j)+sum_temp(j,i)*10^(1-i);
        sum_dec(j)=sum_dec(j)+sum_temp(j,i)*2^(1-i);    %first bit is integer
        if sum_dec(j)>1
            sum_dec(j)=sum_dec(j)-2;
        end
    end
end

end    %end function
        
    


