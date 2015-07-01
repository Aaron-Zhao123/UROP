function datagen(name,x_plus,x_minus,y_plus,y_minus,depth,width)
% Purpose:  MATLAB script to produce a ROM
% with given name of the file, the data as a variable 
% user has to give depth*width of the data == number of words* bit in each
% word
	
DEPTH = depth;		% Size of ROM
WIDTH = width;			% Size of data in bits

filename = strcat(name,'.mif'); %name of the file
fid = fopen(filename,'w');

fprintf(fid,'-- ROM Initialization file\n');
fprintf(fid,'WIDTH = %d;\n',WIDTH);
fprintf(fid,'DEPTH = %d;\n',DEPTH);
fprintf(fid,'ADDRESS_RADIX = HEX;\n');
fprintf(fid,'DATA_RADIX = BIN;\n');
fprintf(fid,'CONTENT\nBEGIN\n');
address=0;

for i = 1:DEPTH
    for j=1:WIDTH
        fprintf(fid,'%4X : ',address);
        fprintf(fid,'%d',x_plus(i,j));  %doubt whether value would work or not
        fprintf(fid,'%d',x_minus(i,j));
        fprintf(fid,'%d',y_plus(i,j));
        fprintf(fid,'%d',y_minus(i,j));
        fprintf(fid,';\n');
        address=address+1;
    end

end

fprintf(fid,'END\n');
fclose(fid);
disp('Finished');










