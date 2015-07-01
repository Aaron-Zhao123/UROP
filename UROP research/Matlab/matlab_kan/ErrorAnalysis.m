% error analysis: error expectation
%clear;
clc;

disp('Simulation Starts...')
WL = 8;
%
filename_EF=strcat('./EF/SumPR_WL',num2str(WL),'_EF.txt');

disp('Read EF file: done')
sum_EF_dec=DataProcessing(filename_EF,45000000)';

disp('Process EF file: done')
T=306;
%for T=306:-2:306
    fn=strcat('./AutoTest/PR/SumPR_WL',num2str(WL),'_T',num2str(T),'.txt');   
    disp('Read Test file: done')
    sum_dec(T,:)=DataProcessing_PR2(fn,45000000)';
    disp('Process Test file: done')

%     error(T,:)=abs(sum_EF_dec)-abs(sum_dec(T,:));
%     exp(T,:)=mean(abs(error(T,:)));
%     MRE(:,T)=exp(T,:)./abs(mean(sum_EF_dec))*100;
%end
