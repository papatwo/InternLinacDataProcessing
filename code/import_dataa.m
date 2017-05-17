function  import_dataa( fpath )
% Import measurement data from folders with shown field size
%   Input argument fpath is the path of the folder which contains all the
%   measurement data that requires to be loaded. Field size of each set of
%   measurements is shown in the final matrices along with the positions
%   of X, Y, Z axes and dose.
%   Important: All the measurement files must be included in a folder named 'asc'

asc=dir([fpath '\*.asc']);
for k=1:length(asc)
    name=asc(k).name;
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
    savepath=[fpath(1:(length(fpath)-4)) '\database'];
    save(fullfile(savepath,savename),'database','M');
    clear M;
end


end

