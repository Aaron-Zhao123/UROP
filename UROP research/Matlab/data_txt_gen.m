function data_txt_gen(name,x_plus,x_minus,y_plus,y_minus,depth,width)
% Purpose:  MATLAB script to produce sample data in a txt file
	
DEPTH = depth;		% Size of ROM
WIDTH = width;			% Size of data in bits

filename = strcat(name,'.txt'); %name of the file
fid = fopen(filename,'w');



for i = 1:DEPTH
    for j=1:WIDTH
        fprintf(fid,'%d',x_plus(i,j));  %doubt whether value would work or not
        fprintf(fid,'%d',x_minus(i,j));
        fprintf(fid,'%d',y_plus(i,j));
        fprintf(fid,'%d',y_minus(i,j));
        fprintf(fid,'\n');
    end

end

fprintf(fid,'END\n');
fclose(fid);
disp('Finished');










