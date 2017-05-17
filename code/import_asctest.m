%% Written by WBY 05/07/2016
function  import_asctest( fpath )
% Import measurement data (.asc) from folders with shown field size
%   Input argument fpath is the path of the folder which contains all the
%   measurement data that requires to be loaded. Field size of each set of
%   measurements is shown in the final matrices along with the positions
%   of X, Y, Z axes and dose.name
%   ***Important: All the measurement files must be included in a folder named 'asc'

asc=dir([fpath '\*.asc']);
for k=1:length(asc)
    name=asc(k).name;
    fid=fopen(name); % open file for FSZ detection
    data=textscan(fid,'%s %s %s %s %s %s %s');
    fclose(fid);

    hline=31; % number of headerfile lines before actual data
    fieldspace=21+15; % number of headerfile cell lines before FSZ 
                      % count from ¡¾data¡¿ cell
    emrow=ones(1,7)*nan;                  

    field1=data{2}{18};
    field2=data{3}{18};
    wedge=data{2}{25};
    measurement=single(str2double(data{2}{1})); % number of measurments 
    filename=name;
    delimiterIn=' ';% column separator
    headerlinesIn=32; % first measurment header lines skip
    M=importdata(filename,delimiterIn,headerlinesIn); % import actual measurment
    add1=ones(size(M.data,1),1)*single(str2double(field1)); % add FSZ of this measurement
    add2=ones(size(M.data,1),1)*single(str2double(field2));
    wed=ones(size(M.data,1),1)*single(str2double(wedge));
    database=[emrow;add1 add2 M.data wed;emrow];
    presize=size((M.data),1);

    temp=0;
    for i=2:measurement % repeat rest of measurments by the steps above
        temp=temp+presize;
        find_cell=18+fieldspace*(i-1)+temp;
        wedpos=25+fieldspace*(i-1)+temp;
        field1=data{2}{find_cell};
        field2=data{3}{find_cell};
        wedge=data{2}{wedpos};
        headerlinesIn=headerlinesIn+presize+hline;
        M=importdata(filename,delimiterIn,headerlinesIn);
        add1=ones(size(M.data,1),1)*single(str2double(field1));
        add2=ones(size(M.data,1),1)*single(str2double(field2));
        wedge=ones(size(M.data,1),1)*single(str2double(wedge));
        tempbase=[add1 add2 M.data];
        database=[database;tempbase wedge;emrow];
        presize=size((M.data),1);
    end
    savename=name(1:(length(name)-4));
    savepath=[fpath(1:(length(fpath)-4)) '\database'];
%     savepath=[fpath(1:(length(fpath)-4)) '\database'];
%     save(fullfile(savepath,savename),'database','M');
     save(fullfile(savepath,savename),'database');

    clear M;
end


end

