function datagen(name,data,depth,width)
% Purpose:  MATLAB script to produce a RAM
% with given name of the file, the data as a variable 
% user has to give depth*width of the data == number of words* bit in each
% word
	
DEPTH = depth;		% Size of RAM
WIDTH = width;			% Size of data in bits

filename = strcat(name,'.mif'); %name of the file
fid = fopen(filename,'w');

fprintf(fid,'-- RAM Initialization file\n');
fprintf(fid,'WIDTH = %d;\n',WIDTH);
fprintf(fid,'DEPTH = %d;\n',DEPTH);
fprintf(fid,'ADDRESS_RADIX = HEX;\n');
fprintf(fid,'DATA_RADIX = BIN;\n');
fprintf(fid,'CONTENT\nBEGIN\n');

for address = 1:DEPTH
    fprintf(fid,'%4X : ',(address-1));
    for index=1:WIDTH
         fprintf(fid,'%d',data(address,index));  %doubt whether value would work or not
    end
    fprintf(fid,';\n');
end

fprintf(fid,'END\n');
fclose(fid);
disp('Finished');










