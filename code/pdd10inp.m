%% 不用这个！！！！！！！！！！！！在下面
fpath='E:\Elekta\pdd1010';
asc=dir([fpath '\*.mat']);
pdd=cell(length(asc),2);
for k=1:length(asc)
    load(asc(k).name);
    z=oppdd10x10(:,5);
    dose=oppdd10x10(:,6);
    if z(1)<z(2)
        xq=z(1):0.1:z(end);
    else
        xq=z(1):-0.1:z(end);
    end
    newdose=interp1(z,dose,xq,'linear');
    plot(xq,newdose);hold on
    strt(k)=min(xq);
    termin(k)=max(xq);
    pdd{k,1}=xq;
    pdd{k,2}=newdose;
end
legend('1','2','3','4','5','6','7')
mini=max(strt);maxx=min(termin);
combi=[];

for k=1:length(asc)
    inx=find(pdd{k,1}>mini-0.05&pdd{k,1}<mini+0.05);
    inx2=find(pdd{k,1}>maxx-0.05&pdd{k,1}<maxx+0.05);
    if inx<inx2
        combi=[combi;pdd{k,2}(inx:inx2)];
    else
        combi=[combi;fliplr(pdd{k,2}(inx2:inx))];
    end
end
avg=mean(combi);
hold on;plot(mini:0.1:maxx,avg,'o');



%% sanity check!!!
j=1;
for i=1:length(y)
    for k=1:length(xq)
        if newx(k)==y(i)
            indd(j)=k;
            j=j+1;
        end
    end
end

test=newdose(indd);
an=test-opencross2x2_50(:,6);
sum(an)




pdd=cell(length(asc),2);
for k=1:length(asc)
    load(asc(k).name);
    z=oppdd10x10(:,5);
    dose=oppdd10x10(:,6);
    xq=z(1):0.1:length(z);
    newz=(interp1(z,xq,'linear','extrap'))';
    newdose=(interp1(dose,xq,'nearest','extrap'))';
    pdd{k,1}=newz;
    pdd{k,2}=newdose;
end
z=oppdd10x10(:,5);
dose=oppdd10x10(:,6);
xq=1:0.1:length(z);
newz=(interp1(z,xq,'linear','extrap'))';
newdose=(interp1(dose,xq,'nearest','extrap'))';
newFSZ1=repmat(opencross2x2_50(1,1),length(newx),1);
newFSZ2=repmat(opencross2x2_50(1,2),length(newx),1);
newaxi1=repmat(opencross2x2_50(1,4),length(newx),1);
newaxi2=repmat(opencross2x2_50(1,5),length(newx),1);

newop2x2_50=[newFSZ1 newFSZ2 newx newaxi1 newaxi2 newdose];

newoppdd10x10=[newz newdose];



%% anotherrrrrrrrr struct loop这里这里这里

ifsz=structfind(hahaha,'FSZ',[400,300]);
icurve=structfind(hahaha,'curve','WPDD');
common=intersect(ifsz,icurve);
pdd=cell(length(common),2);
for k=1:length(common)
    d=diff(hahaha(common(k)).data(:,3));
    unik=find(d==0);
    if ~isempty(unik)
        hahaha(common(k)).data(unik,:)=[];
    end
    z=hahaha(common(k)).data(:,3);
    dose=hahaha(common(k)).data(:,4);
    if z(10)<z(15)
        xq=z(1):0.1:z(end);
    else
        xq=z(1):-0.1:z(end);
    end
    newdose=interp1(z,dose,xq,'linear');
    plot(xq,newdose);hold on
    strt(k)=min(xq);
    termin(k)=max(xq);
    pdd{k,1}=xq;
    pdd{k,2}=newdose;
end
legend('show');
% legend('1','2','3','4','5','6','7')
mini=max(strt);maxx=min(termin);
combi=[];

for k=1:length(common)
    inx=find(pdd{k,1}>mini-0.05&pdd{k,1}<mini+0.05);
    inx2=find(pdd{k,1}>maxx-0.05&pdd{k,1}<maxx+0.05);
    if inx<inx2
        combi=[combi;pdd{k,2}(inx:inx2)];
    else
        combi=[combi;fliplr(pdd{k,2}(inx2:inx))];
    end
end
axiss=mini:0.1:maxx;
avg=mean(combi);
hold on;plot(axiss,avg,'*')
% hold on;plot(mini:0.1:maxx,avg,'o');

% save(fullfile(savepath,savename),'base','start')

%clearvars -except hahaha savepath