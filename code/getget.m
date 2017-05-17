asc=getAllFiles('E:\Elekta\Compact','oppdd2x2.mat',0);
pdd=cell(length(asc),2);
for k=1:3
    data=cell2mat(struct2cell(load(asc{k})));
    z=data(:,5);
    dose=data(:,6);
    if z(1)<z(2)
        xq=z(1):0.1:z(end);
    else
        xq=z(1):-0.1:z(end);
    end
    newdose=interp1(z,dose,xq,'linear');
    plot(xq,newdose);hold on
    strt(1)=min(xq);
    termin(1)=max(xq);
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