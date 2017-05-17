y=opencross2x2_50(:,3);
dose=opencross2x2_50(:,6);
xq=1:0.1:length(y);
newx=(interp1(y,xq,'linear','extrap'))';
newdose=(interp1(dose,xq,'nearest','extrap'))';
newFSZ1=repmat(opencross2x2_50(1,1),length(newx),1);
newFSZ2=repmat(opencross2x2_50(1,2),length(newx),1);
newaxi1=repmat(opencross2x2_50(1,4),length(newx),1);
newaxi2=repmat(opencross2x2_50(1,5),length(newx),1);

newop2x2_50=[newFSZ1 newFSZ2 newx newaxi1 newaxi2 newdose];


%% sanity check!!!
j=1;
for i=1:length(y)
    for k=1:length(newx)
        if newx(k)==y(i)
            indd(j)=k;
            j=j+1;
        end
    end
end

test=newdose(indd);
an=test-opencross2x2_50(:,6);
sum(an)