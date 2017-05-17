clear all;
prompt='Please input the file name:';
name=input(prompt,'s');
fid=fopen(name); % open file for FSZ detection
data=textscan(fid,'%s %s');
fclose(fid);

sepdata=regexp(data{1,1},'=','split');
for i=1:length(sepdata)
    if length(sepdata{i,1})==2
       if strcmp(sepdata{i,1}(1),'FIELD_INPLANE')
           FSZ1=str2double(sepdata{i,1}(2));
           FSZ2=str2double(sepdata{i+1,1}(2));
           j=i+1;
           while ~strcmp(sepdata{j,1},'BEGIN_DATA')
              j=j+1; 
           end
           k=j+1;
           base=[nan nan]; % for updating purpose
           while ~strcmp(sepdata{k,1},'END_DATA')
              temp=[str2double(sepdata{k,1}(1)) str2double(data{1,2}(k))];
              base=[base;temp];
              k=k+1;              
           end
           add1=ones(size(temp,1),1)*FSZ1; % add FSZ of this measurement
           add2=ones(size(temp,1),1)*FSZ2;
           M=[add1 add2 temp];
       end
    end
end


%%

clear all;
prompt='Please input the file name:';
name=input(prompt,'s');
fid=fopen(name); % open file for FSZ detection
data=textscan(fid,'%s %s');
fclose(fid);

sepdata=regexp(data{1,1},'=','split');
for i=1:length(sepdata)
    if length(sepdata{i,1})==2
       if strcmp(sepdata{i,1}(1),'FIELD_INPLANE')
           FSZ1=str2double(sepdata{i,1}(2));
           FSZ2=str2double(sepdata{i+1,1}(2));
           k=i+1;
       end
    end
end

d_length=0;
for j=1:k
    delimiterIn=' ';
    for i=1:length(sepdata)
    while ~strcmp(sepdata{i,1},'BEGIN_DATA')
        i=i+1; 
    end
    headerlinesIn=i+1;
    M(j)=importdata(name,delimiterIn,headerlinesIn);
    end
    d_length=d_length+size(M(j),1);
end

%%  skip every set of measurment data length
%%%%%%%%%%%%%%%%%%%%%using this part%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;
prompt='Please input the file name:';
name=input(prompt,'s');
fid=fopen(name); % open file for FSZ detection
data=textscan(fid,'%s %s');
fclose(fid);

sepdata=regexp(data{1,1},'=','split');
x=1;
for i=1:length(sepdata)
    if length(sepdata{i,1})==2
       if strcmp(sepdata{i,1}(1),'FIELD_INPLANE')
           FSZ1(x)=str2double(sepdata{i,1}(2));
           FSZ2(x)=str2double(sepdata{i+1,1}(2));
           j(x)=i; % indices of all FSZ in the measurement
           x=x+1;
       end
    end
end
y=1;
for pos=1:length(j)
while ~strcmp(sepdata{j(pos),1},'BEGIN_DATA')
  j(pos)=j(pos)+1; 
end
start(pos)=j(pos)+1;
end

base=[nan nan nan nan];
for i=1:length(start)
    end_pos=start(i);
    while ~strcmp(sepdata{end_pos,1},'END_DATA')
      temp=[str2double(sepdata{end_pos,1}(1)) str2double(data{1,2}(end_pos))];
      base=[base;FSZ1(i) FSZ2(i) temp];
      end_pos=end_pos+1;              
    end
end




