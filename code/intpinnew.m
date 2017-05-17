%% FSZ 100 AT DEPTH=20cm INPLANE
function avg=intpinnew(FSZ,curve,depth,structure)
%eg.FSZ=[num,num] in mm;curve='IN';depth=num in mm
%%
ifsz=structfind(structure,'FSZ',FSZ);
icurve=structfind(structure,'curve',curve);
idepth=structfind(structure,'depth',depth);
common=intersect(intersect(ifsz,icurve),idepth);
pdd=cell(length(common),2);
if ~isequal(FSZ,[400,400])
    rang=round((900+depth)*FSZ(1)/1000/2+25,1);
else
    rang=round((900+depth)*FSZ(1)/1000/2+9.5,1);
end
combi=[];
figure;
for k=1:length(common)
    if strcmp(curve,'IN')        
        z=structure(common(k)).data(:,2);
        d=diff(structure(common(k)).data(:,2));% IN
    else
        z=structure(common(k)).data(:,1);
        d=diff(structure(common(k)).data(:,1));% CROSS
    end   
    unik=find(d==0);
    if ~isempty(unik)
        structure(common(k)).data(unik,:)=[];
    end
    dose=structure(common(k)).data(:,4);
    if z(10)<z(15)
        xq=z(1):0.1:z(end);
    else
        xq=z(1):-0.1:z(end);
    end
    nrange=find(xq<-(rang-0.05)&xq>-(rang+0.05));
    prange=find(xq>rang-0.05&xq<rang+0.05);
    newdose=interp1(z,dose,xq,'linear');
    if nrange<prange
        sect=nrange:prange;
    else
        sect=prange:nrange;
    end
    plot(xq(sect),newdose(sect));hold on
    pdd{k,1}=xq(sect);
    pdd{k,2}=newdose(sect);
    combi=[combi;pdd{k,2}];
    clear d unik
%     clearvars -except curve depth FSZ structure rang common pdd combi xq sect

end
legend('show');
% legend('1','2','3','4','5','6','7')
avg(:,1)=xq(sect);
avg(:,2)=mean(combi);
% hold on;plot(mini:0.1:maxx,avg,'o');
end

% clearvars -except hahaha curve depth dose FSZ structure