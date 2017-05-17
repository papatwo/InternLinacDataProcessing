load('E:\Elekta\Compact\AARUNI HOSPITAL\6XCOMPACT\database\open\2X2IPCP.mat')
depth=unique(database(:,5));
i= depth==50;
index_x= database(:,1)==20&database(:,2)==20&database(:,3)~=0&...
database(:,4)==0&database(:,5)==depth(i);% FSZ 20 / open cross
opencross2x2_50=database(index_x,:);

%%
load('E:\Elekta\Compact\Armadas\Photon\database\open\Open Inplane Profiles.mat')
depth=unique(database(:,5));
i=find(depth==50);
index_x=find(database(:,1)==20&database(:,2)==20&database(:,3)~=0&...
database(:,4)==0&database(:,5)==depth(i));% FSZ 20 / open cross
opencross2x2_50=database(index_x,:);