%% Written by WBY 12/07/2016
%%
function  import_mcc2( fpath )

asc=dir([fpath '\*.mcc']);
for k=1:length(asc)
    name=asc(k).name;
    fid=fopen(name); % open file for FSZ detection
    data=textscan(fid,'%s %s %s');
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

savename=name(1:(length(name)-4));    
savepath=[fpath(1:(length(fpath)-4)) '\database'];
save(fullfile(savepath,savename),'base','start')

clear j;
clear start;
clear sepdata;
end

end




