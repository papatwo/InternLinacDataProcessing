%% Written by WBY 05/07/2016
%%%%%%%%%%%%%% To import asc format data into matlab %%%%%%%%%%%%%%
%%
%[a, x, y, z, dose]=textread('CROSSPLANE.asc','%s %s %s %s %s','commentstyle','matlab');

%% Data extraction from ASCII file (old ver. without detecting FSZ automatically)
hline=31;
filename='CROSSPLANE.asc';
delimiterIn=' ';%column separator
headerlinesIn=32;
M(1)=importdata(filename,delimiterIn,headerlinesIn);
database=M(1).data;
for i=2:32
    headerlinesIn=headerlinesIn+length(M(i-1).data)+hline;
    M(i)=importdata(filename,delimiterIn,headerlinesIn);
    database=[database;M(i).data];
end

X=database(:,1);
Y=database(:,2);
Z=database(:,3);
dose=database(:,4);

%% Data extraction from ASCII file (current ver. FSZ scan)
clear all;
prompt='Please input the file name:';
name=input(prompt,'s')
fid=fopen(name); % open file for FSZ detection
data=textscan(fid,'%s %s %s %s %s');
fclose(fid);

hline=31; % number of headerfile lines before actual data
fieldspace=23+15; % number of headerfile cell lines before FSZ 
                  % count from ¡¾data¡¿ cell

field1=data{2}{18};
field2=data{3}{18};
measurement=str2double(data{2}{1}); % number of measurments 
filename=name;
delimiterIn=' ';% column separator
headerlinesIn=32; % first measurment header lines skip
M(1)=importdata(filename,delimiterIn,headerlinesIn); % import actual measurment
add1=ones(size(M(1).data,1),1)*str2double(field1); % add FSZ of this measurement
add2=ones(size(M(1).data,1),1)*str2double(field2);
database=[add1 add2 M(1).data];

temp=0;
for i=2:measurement % repeat rest of measurments by the steps above
    temp=temp+size(M(i-1).data,1);
    find_cell=18+fieldspace*(i-1)+temp;
    field1=data{2}{find_cell};
    field2=data{3}{find_cell};
    headerlinesIn=headerlinesIn+size(M(i-1).data,1)+hline;
    M(i)=importdata(filename,delimiterIn,headerlinesIn);
    add1=ones(size(M(i).data,1),1)*str2double(field1);
    add2=ones(size(M(i).data,1),1)*str2double(field2);
    tempbase=[add1 add2 M(i).data];
    database=[database;tempbase];
end
savename=name(1:(length(name)-4));
save(savename,'database');
