function sinegen(name,data,depth,width)
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
fprintf(fid,'DATA_RADIX = HEX;\n');
fprintf(fid,'CONTENT\nBEGIN\n');

for address = 1:DEPTH	
    value=data(DEPTH,:);
	fprintf(fid,'%4X : %4X;\n',(address-1),10);  %doubt whether value would work or not
end

fprintf(fid,'END\n');
fclose(fid);
disp('Finished');










