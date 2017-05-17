function onepunchmcc(fpath)
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FSZ 20X20
%% open crossplane: x changing/ y=0/ z=50/ FSZ=20
asc=dir([fpath '\*.mat']);
opcross2x2_50=[];

for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==50); % depth 50 
    if i~=0         
        index_x=find(base(:,1)==20&base(:,2)==20&base(:,3)~=0&...
            base(:,4)==0&base(:,5)==depth(i));% FSZ 20 / open cross
        opcross2x2_50=[opcross2x2_50;base(index_x,:)];
    end
end
save([fpath '\opcross2x2_50'],'opcross2x2_50')
%%  open crossplane: x changing/ y=0/ z=100/ FSZ=20
opcross2x2_100=[];
for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==100); % depth 100 
    if i~=0         
        index_x=find(base(:,1)==20&base(:,2)==20&base(:,3)~=0&...
            base(:,4)==0&base(:,5)==depth(i));% FSZ 20 / open cross
        opcross2x2_100=[opcross2x2_100;base(index_x,:)];
    end
end
save([fpath '\opcross2x2_100'],'opcross2x2_100')
%%  open crossplane: x changing/ y=0/ z=200/ FSZ=20
opcross2x2_200=[];
for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==200); % depth 200 
    if i~=0         
        index_x=find(base(:,1)==20&base(:,2)==20&base(:,3)~=0&...
            base(:,4)==0&base(:,5)==depth(i));% FSZ 20 / open cross
        opcross2x2_200=[opcross2x2_200;base(index_x,:)];
    end
end
save([fpath '\opcross2x2_200'],'opcross2x2_200')
%% open crossplane: x changing/ y=0/ z=dmax/ FSZ=20
opcross2x2_max=[];
for k=1:length(asc)
    load(asc(k).name);
    z=find(base(:,1)==20&base(:,2)==20&base(:,3)~=0&...
        base(:,4)==0&base(:,5)~=50&base(:,5)~=100&...
        base(:,5)~=200&base(:,5)~=300); % find 
    i=unique(base(z,5));
    opcross2x2_max=[opcross2x2_max;base(z,:)];
end
save([fpath '\opcross2x2_max'],'opcross2x2_max')
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FSZ 30X30

%% open crossplane: x changing/ y=0/ z=50/ FSZ=30
opcross3x3_50=[];

for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==50); % depth 50 
    if i~=0         
        index_x=find(base(:,1)==30&base(:,2)==30&base(:,3)~=0&...
            base(:,4)==0&base(:,5)==depth(i));% FSZ 20 / open cross
        opcross3x3_50=[opcross3x3_50;base(index_x,:)];
    end
end
save([fpath '\opcross3x3_50'],'opcross3x3_50')
%%  open crossplane: x changing/ y=0/ z=100/ FSZ=30
opcross3x3_100=[];
for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==100); % depth 100 
    if i~=0         
        index_x=find(base(:,1)==30&base(:,2)==30&base(:,3)~=0&...
            base(:,4)==0&base(:,5)==depth(i));% FSZ 20 / open cross
        opcross3x3_100=[opcross3x3_100;base(index_x,:)];
    end
end
save([fpath '\opcross3x3_100'],'opcross3x3_100')
%%  open crossplane: x changing/ y=0/ z=200/ FSZ=30
opcross3x3_200=[];
for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==200); % depth 200 
    if i~=0         
        index_x=find(base(:,1)==30&base(:,2)==30&base(:,3)~=0&...
            base(:,4)==0&base(:,5)==depth(i));% FSZ 20 / open cross
        opcross3x3_200=[opcross3x3_200;base(index_x,:)];
    end
end
save([fpath '\opcross3x3_200'],'opcross3x3_200')
%% open crossplane: x changing/ y=0/ z=dmax/ FSZ=30
opcross3x3_max=[];
for k=1:length(asc)
    load(asc(k).name);
    z=find(base(:,1)==30&base(:,2)==30&base(:,3)~=0&...
        base(:,4)==0&base(:,5)~=50&base(:,5)~=100&...
        base(:,5)~=200&base(:,5)~=300);
    i=unique(base(z,5));
    opcross3x3_max=[opcross3x3_max;base(z,:)];
end
save([fpath '\opcross3x3_max'],'opcross3x3_max')
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FSZ 50x50

%% open crossplane: x changing/ y=0/ z=50/ FSZ=50
opcross5x5_50=[];

for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==50); % depth 50 
    if i~=0         
        index_x=find(base(:,1)==50&base(:,2)==50&base(:,3)~=0&...
            base(:,4)==0&base(:,5)==depth(i));% FSZ 50 / open cross
        opcross5x5_50=[opcross5x5_50;base(index_x,:)];
    end
end
save([fpath '\opcross5x5_50'],'opcross5x5_50')

%%  open crossplane: x changing/ y=0/ z=100/ FSZ=50
% lost data at x=y=0 (clash with pdd at 50(if has))
opcross5x5_100=[];
for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==100); % depth 100 
    if i~=0         
        index_x=find(base(:,1)==50&base(:,2)==50&base(:,3)~=0&...
            base(:,4)==0&base(:,5)==depth(i));% FSZ 20 / open cross
        opcross5x5_100=[opcross5x5_100;base(index_x,:)];
    end
end
save([fpath '\opcross5x5_100'],'opcross5x5_100')

%%  open crossplane: x changing/ y=0/ z=200/ FSZ=50
opcross5x5_200=[];
for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==200); % depth 200 
    if i~=0         
        index_x=find(base(:,1)==50&base(:,2)==50&base(:,3)~=0&...
            base(:,4)==0&base(:,5)==depth(i));% FSZ 20 / open cross
        opcross5x5_200=[opcross5x5_200;base(index_x,:)];
    end
end
save([fpath '\opcross5x5_200'],'opcross5x5_200')

%% open crossplane: x changing/ y=0/ z=dmax/ FSZ=50
opcross5x5_max=[];
for k=1:length(asc)
    load(asc(k).name);
    z=find(base(:,1)==50&base(:,2)==50&base(:,3)~=0&...
        base(:,4)==0&base(:,5)~=50&base(:,5)~=100&...
        base(:,5)~=200&base(:,5)~=300);
    i=unique(base(z,5));
    opcross5x5_max=[opcross5x5_max;base(z,:)];
end
save([fpath '\opcross5x5_max'],'opcross5x5_max')
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FSZ 100x100

%% open crossplane: x changing/ y=0/ z=50/ FSZ=100
opcross10x10_50=[];

for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==50); % depth 50 
    if i~=0         
        index_x=find(base(:,1)==100&base(:,2)==100&base(:,3)~=0&...
            base(:,4)==0&base(:,5)==depth(i));% FSZ 100 / open cross
        opcross10x10_50=[opcross10x10_50;base(index_x,:)];
    end
end
save([fpath '\opcross10x10_50'],'opcross10x10_50')

%%  open crossplane: x changing/ y=0/ z=100/ FSZ=100
% lost data at x=y=0 (clash with pdd at 50(if has))
opcross10x10_100=[];
for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==100); % depth 100 
    if i~=0         
        index_x=find(base(:,1)==100&base(:,2)==100&base(:,3)~=0&...
            base(:,4)==0&base(:,5)==depth(i));% FSZ 100 / open cross
        opcross10x10_100=[opcross10x10_100;base(index_x,:)];
    end
end
save([fpath '\opcross10x10_100'],'opcross10x10_100')

%%  open crossplane: x changing/ y=0/ z=200/ FSZ=100
% lost data at x=y=0 (clash with pdd at 50(if has))
opcross10x10_200=[];
for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==200); % depth 200 
    if i~=0         
        index_x=find(base(:,1)==100&base(:,2)==100&base(:,3)~=0&...
            base(:,4)==0&base(:,5)==depth(i));% FSZ 100 / open cross
        opcross10x10_200=[opcross10x10_200;base(index_x,:)];
    end
end
save([fpath '\opcross10x10_200'],'opcross10x10_200')

%% open crossplane: x changing/ y=0/ z=dmax/ FSZ=100
opcross10x10_max=[];
for k=1:length(asc)
    load(asc(k).name);
    z=find(base(:,1)==100&base(:,2)==100&base(:,3)~=0&...
        base(:,4)==0&base(:,5)~=50&base(:,5)~=100&...
        base(:,5)~=200&base(:,5)~=300);
    i=unique(base(z,5));
    opcross10x10_max=[opcross10x10_max;base(z,:)];
end
save([fpath '\opcross10x10_max'],'opcross10x10_max')
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FSZ 150x150

%% open crossplane: x changing/ y=0/ z=50/ FSZ=150
opcross15x15_50=[];

for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==50); % depth 50 
    if i~=0         
        index_x=find(base(:,1)==150&base(:,2)==150&base(:,3)~=0&...
            base(:,4)==0&base(:,5)==depth(i));% FSZ 150 / open cross
        opcross15x15_50=[opcross15x15_50;base(index_x,:)];
    end
end
save([fpath '\opcross15x15_50'],'opcross15x15_50')

%%  open crossplane: x changing/ y=0/ z=100/ FSZ=150
% lost data at x=y=0 (clash with pdd at 50(if has))
opcross15x15_100=[];
for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==100); % depth 100 
    if i~=0         
        index_x=find(base(:,1)==150&base(:,2)==150&base(:,3)~=0&...
            base(:,4)==0&base(:,5)==depth(i));% FSZ 150 / open cross
        opcross15x15_100=[opcross15x15_100;base(index_x,:)];
    end
end
save([fpath '\opcross15x15_100'],'opcross15x15_100')

%%  open crossplane: x changing/ y=0/ z=200/ FSZ=150
% lost data at x=y=0 (clash with pdd at 50(if has))
opcross15x15_200=[];
for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==200); % depth 200 
    if i~=0         
        index_x=find(base(:,1)==150&base(:,2)==150&base(:,3)~=0&...
            base(:,4)==0&base(:,5)==depth(i));% FSZ 150 / open cross
        opcross15x15_200=[opcross15x15_200;base(index_x,:)];
    end
end
save([fpath '\opcross15x15_200'],'opcross15x15_200')

%% open crossplane: x changing/ y=0/ z=dmax/ FSZ=150
opcross15x15_max=[];
for k=1:length(asc)
    load(asc(k).name);
    z=find(base(:,1)==150&base(:,2)==150&base(:,3)~=0&...
        base(:,4)==0&base(:,5)~=50&base(:,5)~=100&...
        base(:,5)~=200&base(:,5)~=300);
    i=unique(base(z,5));
    opcross15x15_max=[opcross15x15_max;base(z,:)];
end
save([fpath '\opcross15x15_max'],'opcross15x15_max')
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FSZ 200x200

%% open crossplane: x changing/ y=0/ z=50/ FSZ=200
opcross20x20_50=[];

for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==50); % depth 50 
    if i~=0         
        index_x=find(base(:,1)==200&base(:,2)==200&base(:,3)~=0&...
            base(:,4)==0&base(:,5)==depth(i));% FSZ 150 / open cross
        opcross20x20_50=[opcross20x20_50;base(index_x,:)];
    end
end
save([fpath '\opcross20x20_50'],'opcross20x20_50')

%%  open crossplane: x changing/ y=0/ z=100/ FSZ=200
% lost data at x=y=0 (clash with pdd at 50(if has))
opcross20x20_100=[];
for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==100); % depth 100 
    if i~=0         
        index_x=find(base(:,1)==200&base(:,2)==200&base(:,3)~=0&...
            base(:,4)==0&base(:,5)==depth(i));% FSZ 150 / open cross
        opcross20x20_100=[opcross20x20_100;base(index_x,:)];
    end
end
save([fpath '\opcross20x20_100'],'opcross20x20_100')

%%  open crossplane: x changing/ y=0/ z=200/ FSZ=200
% lost data at x=y=0 (clash with pdd at 50(if has))
opcross20x20_200=[];
for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==200); % depth 200 
    if i~=0         
        index_x=find(base(:,1)==200&base(:,2)==200&base(:,3)~=0&...
            base(:,4)==0&base(:,5)==depth(i));% FSZ 150 / open cross
        opcross20x20_200=[opcross20x20_200;base(index_x,:)];
    end
end
save([fpath '\opcross20x20_200'],'opcross20x20_200')

%% open crossplane: x changing/ y=0/ z=dmax/ FSZ=200
opcross20x20_max=[];
for k=1:length(asc)
    load(asc(k).name);
    z=find(base(:,1)==200&base(:,2)==200&base(:,3)~=0&...
        base(:,4)==0&base(:,5)~=50&base(:,5)~=100&...
        base(:,5)~=200&base(:,5)~=300);
    i=unique(base(z,5));
    opcross20x20_max=[opcross20x20_max;base(z,:)];
end
save([fpath '\opcross20x20_max'],'opcross20x20_max')
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FSZ 300x300

%% open crossplane: x changing/ y=0/ z=50/ FSZ=300
opcross30x30_50=[];

for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==50); % depth 50 
    if i~=0         
        index_x=find(base(:,1)==300&base(:,2)==300&base(:,3)~=0&...
            base(:,4)==0&base(:,5)==depth(i));% FSZ 300 / open cross
        opcross30x30_50=[opcross30x30_50;base(index_x,:)];
    end
end
save([fpath '\opcross30x30_50'],'opcross30x30_50')

%%  open crossplane: x changing/ y=0/ z=100/ FSZ=300
% lost data at x=y=0 (clash with pdd at 50(if has))
opcross30x30_100=[];
for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==100); % depth 100 
    if i~=0         
        index_x=find(base(:,1)==300&base(:,2)==300&base(:,3)~=0&...
            base(:,4)==0&base(:,5)==depth(i));% FSZ 300 / open cross
        opcross30x30_100=[opcross30x30_100;base(index_x,:)];
    end
end
save([fpath '\opcross30x30_100'],'opcross30x30_100')

%%  open crossplane: x changing/ y=0/ z=200/ FSZ=300
% lost data at x=y=0 (clash with pdd at 50(if has))
opcross30x30_200=[];
for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==200); % depth 200 
    if i~=0         
        index_x=find(base(:,1)==300&base(:,2)==300&base(:,3)~=0&...
            base(:,4)==0&base(:,5)==depth(i));% FSZ 300 / open cross
        opcross30x30_200=[opcross30x30_200;base(index_x,:)];
    end
end
save([fpath '\opcross30x30_200'],'opcross30x30_200')

%% open crossplane: x changing/ y=0/ z=dmax/ FSZ=300
opcross30x30_max=[];
for k=1:length(asc)
    load(asc(k).name);
    z=find(base(:,1)==300&base(:,2)==300&base(:,3)~=0&...
        base(:,4)==0&base(:,5)~=50&base(:,5)~=100&...
        base(:,5)~=200&base(:,5)~=300);
    i=unique(base(z,5));
    opcross30x30_max=[opcross30x30_max;base(z,:)];
end
save([fpath '\opcross30x30_max'],'opcross30x30_max')
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FSZ 400x400

%% open crossplane: x changing/ y=0/ z=50/ FSZ=400
opcross40x40_50=[];

for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==50); % depth 50 
    if i~=0         
        index_x=find(base(:,1)==400&base(:,2)==400&base(:,3)~=0&...
            base(:,4)==0&base(:,5)==depth(i));% FSZ 400 / open cross
        opcross40x40_50=[opcross40x40_50;base(index_x,:)];
    end
end
save([fpath '\opcross40x40_50'],'opcross40x40_50')

%%  open crossplane: x changing/ y=0/ z=100/ FSZ=400
% lost data at x=y=0 (clash with pdd at 50(if has))
opcross40x40_100=[];
for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==100); % depth 100 
    if i~=0         
        index_x=find(base(:,1)==400&base(:,2)==400&base(:,3)~=0&...
            base(:,4)==0&base(:,5)==depth(i));% FSZ 400 / open cross
        opcross40x40_100=[opcross40x40_100;base(index_x,:)];
    end
end
save([fpath '\opcross40x40_100'],'opcross40x40_100')

%%  open crossplane: x changing/ y=0/ z=200/ FSZ=400
% lost data at x=y=0 (clash with pdd at 50(if has))
opcross40x40_200=[];
for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==200); % depth 200 
    if i~=0         
        index_x=find(base(:,1)==400&base(:,2)==400&base(:,3)~=0&...
            base(:,4)==0&base(:,5)==depth(i));% FSZ 400 / open cross
        opcross40x40_200=[opcross40x40_200;base(index_x,:)];
    end
end
save([fpath '\opcross40x40_200'],'opcross40x40_200')

%% open crossplane: x changing/ y=0/ z=dmax/ FSZ=400
opcross40x40_max=[];
for k=1:length(asc)
    load(asc(k).name);
    z=find(base(:,1)==400&base(:,2)==400&base(:,3)~=0&...
        base(:,4)==0&base(:,5)~=50&base(:,5)~=100&...
        base(:,5)~=200&base(:,5)~=300);
    i=unique(base(z,5));
    opcross40x40_max=[opcross40x40_max;base(z,:)];
end
save([fpath '\opcross40x40_max'],'opcross40x40_max')

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% IN PLANE
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FSZ 20X20
%% open crossplane: x changing/ y=0/ z=50/ FSZ=20
opin2x2_50=[];

for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==50); % depth 50 
    if i~=0         
        index_x=find(base(:,1)==20&base(:,2)==20&base(:,3)==0&...
            base(:,4)~=0&base(:,5)==depth(i));% FSZ 20 / open cross
        opin2x2_50=[opin2x2_50;base(index_x,:)];
    end
end
save([fpath '\opin2x2_50'],'opin2x2_50')
%%  open crossplane: x changing/ y=0/ z=100/ FSZ=20
opin2x2_100=[];
for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==100); % depth 100 
    if i~=0         
        index_x=find(base(:,1)==20&base(:,2)==20&base(:,3)==0&...
            base(:,4)~=0&base(:,5)==depth(i));% FSZ 20 / open cross
        opin2x2_100=[opin2x2_100;base(index_x,:)];
    end
end
save([fpath '\opin2x2_100'],'opin2x2_100')
%%  open crossplane: x changing/ y=0/ z=200/ FSZ=20
opin2x2_200=[];
for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==200); % depth 200 
    if i~=0         
        index_x=find(base(:,1)==20&base(:,2)==20&base(:,3)==0&...
            base(:,4)~=0&base(:,5)==depth(i));% FSZ 20 / open cross
        opin2x2_200=[opin2x2_200;base(index_x,:)];
    end
end
save([fpath '\opin2x2_200'],'opin2x2_200')
%% open crossplane: x changing/ y=0/ z=dmax/ FSZ=20
opin2x2_max=[];
for k=1:length(asc)
    load(asc(k).name);
    z=find(base(:,1)==20&base(:,2)==20&base(:,3)==0&...
        base(:,4)~=0&base(:,5)~=50&base(:,5)~=100&...
        base(:,5)~=200&base(:,5)~=300); % find 
    i=unique(base(z,5));
    opin2x2_max=[opin2x2_max;base(z,:)];
end
save([fpath '\opin2x2_max'],'opin2x2_max')
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FSZ 30X30

%% open crossplane: x changing/ y=0/ z=50/ FSZ=30
opin3x3_50=[];

for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==50); % depth 50 
    if i~=0         
        index_x=find(base(:,1)==30&base(:,2)==30&base(:,3)==0&...
            base(:,4)~=0&base(:,5)==depth(i));% FSZ 20 / open cross
        opin3x3_50=[opin3x3_50;base(index_x,:)];
    end
end
save([fpath '\opin3x3_50'],'opin3x3_50')
%%  open crossplane: x changing/ y=0/ z=100/ FSZ=30
opin3x3_100=[];
for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==100); % depth 100 
    if i~=0         
        index_x=find(base(:,1)==30&base(:,2)==30&base(:,3)==0&...
            base(:,4)~=0&base(:,5)==depth(i));% FSZ 20 / open cross
        opin3x3_100=[opin3x3_100;base(index_x,:)];
    end
end
save([fpath '\opin3x3_100'],'opin3x3_100')
%%  open crossplane: x changing/ y=0/ z=200/ FSZ=30
opin3x3_200=[];
for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==200); % depth 200 
    if i~=0         
        index_x=find(base(:,1)==30&base(:,2)==30&base(:,3)==0&...
            base(:,4)~=0&base(:,5)==depth(i));% FSZ 20 / open cross
        opin3x3_200=[opin3x3_200;base(index_x,:)];
    end
end
save([fpath '\opin3x3_200'],'opin3x3_200')
%% open crossplane: x changing/ y=0/ z=dmax/ FSZ=30
opin3x3_max=[];
for k=1:length(asc)
    load(asc(k).name);
    z=find(base(:,1)==30&base(:,2)==30&base(:,3)==0&...
        base(:,4)~=0&base(:,5)~=50&base(:,5)~=100&...
        base(:,5)~=200&base(:,5)~=300);
    i=unique(base(z,5));
    opin3x3_max=[opin3x3_max;base(z,:)];
end
save([fpath '\opin3x3_max'],'opin3x3_max')
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FSZ 50x50

%% open crossplane: x changing/ y=0/ z=50/ FSZ=50
opin5x5_50=[];

for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==50); % depth 50 
    if i~=0         
        index_x=find(base(:,1)==50&base(:,2)==50&base(:,3)==0&...
            base(:,4)~=0&base(:,5)==depth(i));% FSZ 50 / open cross
        opin5x5_50=[opin5x5_50;base(index_x,:)];
    end
end
save([fpath '\opin5x5_50'],'opin5x5_50')

%%  open crossplane: x changing/ y=0/ z=100/ FSZ=50
% lost data at x=y=0 (clash with pdd at 50(if has))
opin5x5_100=[];
for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==100); % depth 100 
    if i~=0         
        index_x=find(base(:,1)==50&base(:,2)==50&base(:,3)==0&...
            base(:,4)~=0&base(:,5)==depth(i));% FSZ 20 / open cross
        opin5x5_100=[opin5x5_100;base(index_x,:)];
    end
end
save([fpath '\opin5x5_100'],'opin5x5_100')

%%  open crossplane: x changing/ y=0/ z=200/ FSZ=50
opin5x5_200=[];
for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==200); % depth 200 
    if i~=0         
        index_x=find(base(:,1)==50&base(:,2)==50&base(:,3)==0&...
            base(:,4)~=0&base(:,5)==depth(i));% FSZ 20 / open cross
        opin5x5_200=[opin5x5_200;base(index_x,:)];
    end
end
save([fpath '\opin5x5_200'],'opin5x5_200')

%% open crossplane: x changing/ y=0/ z=dmax/ FSZ=50
opin5x5_max=[];
for k=1:length(asc)
    load(asc(k).name);
    z=find(base(:,1)==50&base(:,2)==50&base(:,3)==0&...
        base(:,4)~=0&base(:,5)~=50&base(:,5)~=100&...
        base(:,5)~=200&base(:,5)~=300);
    i=unique(base(z,5));
    opin5x5_max=[opin5x5_max;base(z,:)];
end
save([fpath '\opin5x5_max'],'opin5x5_max')
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FSZ 100x100

%% open crossplane: x changing/ y=0/ z=50/ FSZ=100
opin10x10_50=[];

for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==50); % depth 50 
    if i~=0         
        index_x=find(base(:,1)==100&base(:,2)==100&base(:,3)==0&...
            base(:,4)~=0&base(:,5)==depth(i));% FSZ 100 / open cross
        opin10x10_50=[opin10x10_50;base(index_x,:)];
    end
end
save([fpath '\opin10x10_50'],'opin10x10_50')

%%  open crossplane: x changing/ y=0/ z=100/ FSZ=100
% lost data at x=y=0 (clash with pdd at 50(if has))
opin10x10_100=[];
for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==100); % depth 100 
    if i~=0         
        index_x=find(base(:,1)==100&base(:,2)==100&base(:,3)==0&...
            base(:,4)~=0&base(:,5)==depth(i));% FSZ 100 / open cross
        opin10x10_100=[opin10x10_100;base(index_x,:)];
    end
end
save([fpath '\opin10x10_100'],'opin10x10_100')

%%  open crossplane: x changing/ y=0/ z=200/ FSZ=100
% lost data at x=y=0 (clash with pdd at 50(if has))
opin10x10_200=[];
for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==200); % depth 200 
    if i~=0         
        index_x=find(base(:,1)==100&base(:,2)==100&base(:,3)==0&...
            base(:,4)~=0&base(:,5)==depth(i));% FSZ 100 / open cross
        opin10x10_200=[opin10x10_200;base(index_x,:)];
    end
end
save([fpath '\opin10x10_200'],'opin10x10_200')

%% open crossplane: x changing/ y=0/ z=dmax/ FSZ=100
opin10x10_max=[];
for k=1:length(asc)
    load(asc(k).name);
    z=find(base(:,1)==100&base(:,2)==100&base(:,3)==0&...
        base(:,4)~=0&base(:,5)~=50&base(:,5)~=100&...
        base(:,5)~=200&base(:,5)~=300);
    i=unique(base(z,5));
    opin10x10_max=[opin10x10_max;base(z,:)];
end
save([fpath '\opin10x10_max'],'opin10x10_max')
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FSZ 150x150

%% open crossplane: x changing/ y=0/ z=50/ FSZ=150
opin15x15_50=[];

for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==50); % depth 50 
    if i~=0         
        index_x=find(base(:,1)==150&base(:,2)==150&base(:,3)==0&...
            base(:,4)~=0&base(:,5)==depth(i));% FSZ 150 / open cross
        opin15x15_50=[opin15x15_50;base(index_x,:)];
    end
end
save([fpath '\opin15x15_50'],'opin15x15_50')

%%  open crossplane: x changing/ y=0/ z=100/ FSZ=150
% lost data at x=y=0 (clash with pdd at 50(if has))
opin15x15_100=[];
for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==100); % depth 100 
    if i~=0         
        index_x=find(base(:,1)==150&base(:,2)==150&base(:,3)==0&...
            base(:,4)~=0&base(:,5)==depth(i));% FSZ 150 / open cross
        opin15x15_100=[opin15x15_100;base(index_x,:)];
    end
end
save([fpath '\opin15x15_100'],'opin15x15_100')

%%  open crossplane: x changing/ y=0/ z=200/ FSZ=150
% lost data at x=y=0 (clash with pdd at 50(if has))
opin15x15_200=[];
for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==200); % depth 200 
    if i~=0         
        index_x=find(base(:,1)==150&base(:,2)==150&base(:,3)==0&...
            base(:,4)~=0&base(:,5)==depth(i));% FSZ 150 / open cross
        opin15x15_200=[opin15x15_200;base(index_x,:)];
    end
end
save([fpath '\opin15x15_200'],'opin15x15_200')

%% open crossplane: x changing/ y=0/ z=dmax/ FSZ=150
opin15x15_max=[];
for k=1:length(asc)
    load(asc(k).name);
    z=find(base(:,1)==150&base(:,2)==150&base(:,3)==0&...
        base(:,4)~=0&base(:,5)~=50&base(:,5)~=100&...
        base(:,5)~=200&base(:,5)~=300);
    i=unique(base(z,5));
    opin15x15_max=[opin15x15_max;base(z,:)];
end
save([fpath '\opin15x15_max'],'opin15x15_max')
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FSZ 200x200

%% open crossplane: x changing/ y=0/ z=50/ FSZ=200
opin20x20_50=[];

for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==50); % depth 50 
    if i~=0         
        index_x=find(base(:,1)==200&base(:,2)==200&base(:,3)==0&...
            base(:,4)~=0&base(:,5)==depth(i));% FSZ 150 / open cross
        opin20x20_50=[opin20x20_50;base(index_x,:)];
    end
end
save([fpath '\opin20x20_50'],'opin20x20_50')

%%  open crossplane: x changing/ y=0/ z=100/ FSZ=200
% lost data at x=y=0 (clash with pdd at 50(if has))
opin20x20_100=[];
for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==100); % depth 100 
    if i~=0         
        index_x=find(base(:,1)==200&base(:,2)==200&base(:,3)==0&...
            base(:,4)~=0&base(:,5)==depth(i));% FSZ 150 / open cross
        opin20x20_100=[opin20x20_100;base(index_x,:)];
    end
end
save([fpath '\opin20x20_100'],'opin20x20_100')

%%  open crossplane: x changing/ y=0/ z=200/ FSZ=200
% lost data at x=y=0 (clash with pdd at 50(if has))
opin20x20_200=[];
for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==200); % depth 200 
    if i~=0         
        index_x=find(base(:,1)==200&base(:,2)==200&base(:,3)==0&...
            base(:,4)~=0&base(:,5)==depth(i));% FSZ 150 / open cross
        opin20x20_200=[opin20x20_200;base(index_x,:)];
    end
end
save([fpath '\opin20x20_200'],'opin20x20_200')

%% open crossplane: x changing/ y=0/ z=dmax/ FSZ=200
opin20x20_max=[];
for k=1:length(asc)
    load(asc(k).name);
    z=find(base(:,1)==200&base(:,2)==200&base(:,3)==0&...
        base(:,4)~=0&base(:,5)~=50&base(:,5)~=100&...
        base(:,5)~=200&base(:,5)~=300);
    i=unique(base(z,5));
    opin20x20_max=[opin20x20_max;base(z,:)];
end
save([fpath '\opin20x20_max'],'opin20x20_max')
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FSZ 300x300

%% open crossplane: x changing/ y=0/ z=50/ FSZ=300
opin30x30_50=[];

for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==50); % depth 50 
    if i~=0         
        index_x=find(base(:,1)==300&base(:,2)==300&base(:,3)==0&...
            base(:,4)~=0&base(:,5)==depth(i));% FSZ 300 / open cross
        opin30x30_50=[opin30x30_50;base(index_x,:)];
    end
end
save([fpath '\opin30x30_50'],'opin30x30_50')

%%  open crossplane: x changing/ y=0/ z=100/ FSZ=300
% lost data at x=y=0 (clash with pdd at 50(if has))
opin30x30_100=[];
for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==100); % depth 100 
    if i~=0         
        index_x=find(base(:,1)==300&base(:,2)==300&base(:,3)==0&...
            base(:,4)~=0&base(:,5)==depth(i));% FSZ 300 / open cross
        opin30x30_100=[opin30x30_100;base(index_x,:)];
    end
end
save([fpath '\opin30x30_100'],'opin30x30_100')

%%  open crossplane: x changing/ y=0/ z=200/ FSZ=300
% lost data at x=y=0 (clash with pdd at 50(if has))
opin30x30_200=[];
for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==200); % depth 200 
    if i~=0         
        index_x=find(base(:,1)==300&base(:,2)==300&base(:,3)==0&...
            base(:,4)~=0&base(:,5)==depth(i));% FSZ 300 / open cross
        opin30x30_200=[opin30x30_200;base(index_x,:)];
    end
end
save([fpath '\opin30x30_200'],'opin30x30_200')

%% open crossplane: x changing/ y=0/ z=dmax/ FSZ=300
opin30x30_max=[];
for k=1:length(asc)
    load(asc(k).name);
    z=find(base(:,1)==300&base(:,2)==300&base(:,3)==0&...
        base(:,4)~=0&base(:,5)~=50&base(:,5)~=100&...
        base(:,5)~=200&base(:,5)~=300);
    i=unique(base(z,5));
    opin30x30_max=[opin30x30_max;base(z,:)];
end
save([fpath '\opin30x30_max'],'opin30x30_max')
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FSZ 400x400

%% open crossplane: x changing/ y=0/ z=50/ FSZ=400
opin40x40_50=[];

for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==50); % depth 50 
    if i~=0         
        index_x=find(base(:,1)==400&base(:,2)==400&base(:,3)==0&...
            base(:,4)~=0&base(:,5)==depth(i));% FSZ 400 / open cross
        opin40x40_50=[opin40x40_50;base(index_x,:)];
    end
end
save([fpath '\opin40x40_50'],'opin40x40_50')

%%  open crossplane: x changing/ y=0/ z=100/ FSZ=400
% lost data at x=y=0 (clash with pdd at 50(if has))
opin40x40_100=[];
for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==100); % depth 100 
    if i~=0         
        index_x=find(base(:,1)==400&base(:,2)==400&base(:,3)==0&...
            base(:,4)~=0&base(:,5)==depth(i));% FSZ 400 / open cross
        opin40x40_100=[opin40x40_100;base(index_x,:)];
    end
end
save([fpath '\opin40x40_100'],'opin40x40_100')

%%  open crossplane: x changing/ y=0/ z=200/ FSZ=400
% lost data at x=y=0 (clash with pdd at 50(if has))
opin40x40_200=[];
for k=1:length(asc)
    load(asc(k).name);
    depth=unique(base(:,5));
    i=find(depth==200); % depth 200 
    if i~=0         
        index_x=find(base(:,1)==400&base(:,2)==400&base(:,3)==0&...
            base(:,4)~=0&base(:,5)==depth(i));% FSZ 400 / open cross
        opin40x40_200=[opin40x40_200;base(index_x,:)];
    end
end
save([fpath '\opin40x40_200'],'opin40x40_200')

%% open crossplane: x changing/ y=0/ z=dmax/ FSZ=400
opin40x40_max=[];
for k=1:length(asc)
    load(asc(k).name);
    z=find(base(:,1)==400&base(:,2)==400&base(:,3)==0&...
        base(:,4)~=0&base(:,5)~=50&base(:,5)~=100&...
        base(:,5)~=200&base(:,5)~=300);
    i=unique(base(z,5));
    opin40x40_max=[opin40x40_max;base(z,:)];
end
save([fpath '\opin40x40_max'],'opin40x40_max')


%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PDD
oppdd2x2=[];
for k=1:length(asc)
    load(asc(k).name);
    z=find(base(:,1)==20&base(:,2)==20&base(:,3)==0&...       
        base(:,4)==0&base(:,5)~=0);    
    i=unique(base(z,5));
    if isempty(z)~=1
        while base(z(1),5)>2&&base(z(1),5)<200 % as the dmax of profile usually greater than 10 (around 14-15)      
            z(1,:)=[];              
        end      
    end
        oppdd2x2=[oppdd2x2;base(z,:)];
        
    if oppdd2x2(1,5)>0
        while oppdd2x2(end,5)>0
            oppdd2x2(end,:)=[];
        end
    end
end
save([fpath '\oppdd2x2'],'oppdd2x2')

oppdd3x3=[];
for k=1:length(asc)
    load(asc(k).name);
    z=find(base(:,1)==30&base(:,2)==30&base(:,3)==0&...       
        base(:,4)==0&base(:,5)~=0);    
    i=unique(base(z,5));
    if isempty(z)~=1
        while base(z(1),5)>2&&base(z(1),5)<200       
            z(1,:)=[];              
        end      
    end
        oppdd3x3=[oppdd3x3;base(z,:)];
        
    if oppdd3x3(1,5)>0
        while oppdd3x3(end,5)>0
            oppdd3x3(end,:)=[];
        end
    end
end
save([fpath '\oppdd3x3'],'oppdd3x3')

oppdd4x4=[];
for k=1:length(asc)
    load(asc(k).name);
    z=find(base(:,1)==40&base(:,2)==40&base(:,3)==0&...       
        base(:,4)==0&base(:,5)~=0);    
    i=unique(base(z,5));
    if isempty(z)~=1
        while base(z(1),5)>2&&base(z(1),5)<200       
            z(1,:)=[];              
        end      
    end
        oppdd4x4=[oppdd4x4;base(z,:)];
        
    if oppdd4x4(1,5)>0
        while oppdd4x4(end,5)>0
            oppdd4x4(end,:)=[];
        end
    end
end
save([fpath '\oppdd4x4'],'oppdd4x4')

oppdd5x5=[];
for k=1:length(asc)
    load(asc(k).name);
    z=find(base(:,1)==50&base(:,2)==50&base(:,3)==0&...       
        base(:,4)==0&base(:,5)~=0);    
    i=unique(base(z,5));
    if isempty(z)~=1
        while base(z(1),5)>2&&base(z(1),5)<200       
            z(1,:)=[];              
        end      
    end
        oppdd5x5=[oppdd5x5;base(z,:)];
        
    if oppdd5x5(1,5)>0
        while oppdd5x5(end,5)>0
            oppdd5x5(end,:)=[];
        end
    end
end
save([fpath '\oppdd5x5'],'oppdd5x5')

oppdd7x7=[];
for k=1:length(asc)
    load(asc(k).name);
    z=find(base(:,1)==70&base(:,2)==70&base(:,3)==0&...       
        base(:,4)==0&base(:,5)~=0);    
    i=unique(base(z,5));
    if isempty(z)~=1
        while base(z(1),5)>2&&base(z(1),5)<200       
            z(1,:)=[];              
        end      
    end
        oppdd7x7=[oppdd7x7;base(z,:)];
    if oppdd7x7(1,5)>0
        while oppdd7x7(end,5)>0
            oppdd7x7(end,:)=[];
        end
    end
end
save([fpath '\oppdd7x7'],'oppdd7x7')

oppdd10x10=[];
for k=1:length(asc)
    load(asc(k).name);
    z=find(base(:,1)==100&base(:,2)==100&base(:,3)==0&...       
        base(:,4)==0&base(:,5)~=0);    
    i=unique(base(z,5));
    if isempty(z)~=1
        while base(z(1),5)>2&&base(z(1),5)<200       
            z(1,:)=[];              
        end      
    end
        oppdd10x10=[oppdd10x10;base(z,:)];
        
    if oppdd10x10(1,5)>0
        while oppdd10x10(end,5)>0
            oppdd10x10(end,:)=[];
        end
    end
end
save([fpath '\oppdd10x10'],'oppdd10x10')

oppdd15x15=[];
for k=1:length(asc)
    load(asc(k).name);
    z=find(base(:,1)==150&base(:,2)==150&base(:,3)==0&...       
        base(:,4)==0&base(:,5)~=0);    
    i=unique(base(z,5));
    if isempty(z)~=1
        while base(z(1),5)>2&&base(z(1),5)<200       
            z(1,:)=[];              
        end      
    end
        oppdd15x15=[oppdd15x15;base(z,:)];
        
    if oppdd15x15(1,5)>0
        while oppdd15x15(end,5)>0
            oppdd15x15(end,:)=[];
        end
    end
end
save([fpath '\oppdd15x15'],'oppdd15x15')

oppdd20x20=[];
for k=1:length(asc)
    load(asc(k).name);
    z=find(base(:,1)==200&base(:,2)==200&base(:,3)==0&...       
        base(:,4)==0&base(:,5)~=0);    
    i=unique(base(z,5));
    if isempty(z)~=1
        while base(z(1),5)>2&&base(z(1),5)<200       
            z(1,:)=[];              
        end      
    end
        oppdd20x20=[oppdd20x20;base(z,:)];
        
    if oppdd20x20(1,5)>0
        while oppdd20x20(end,5)>0
            oppdd20x20(end,:)=[];
        end
    end
end
save([fpath '\oppdd20x20'],'oppdd20x20')

oppdd30x30=[];
for k=1:length(asc)
    load(asc(k).name);
    z=find(base(:,1)==300&base(:,2)==300&base(:,3)==0&...       
        base(:,4)==0&base(:,5)~=0);    
    i=unique(base(z,5));
    if isempty(z)~=1
        while base(z(1),5)>2&&base(z(1),5)<200       
            z(1,:)=[];              
        end      
    end
        oppdd30x30=[oppdd30x30;base(z,:)]; 
        
    if oppdd30x30(1,5)>0 % in case the measurement was taken from +ve to -ve
        while oppdd30x30(end,5)>0
            oppdd30x30(end,:)=[];
        end
    end
end
save([fpath '\oppdd30x30'],'oppdd30x30')

oppdd40x40=[];
for k=1:length(asc)
    load(asc(k).name);
    z=find(base(:,1)==400&base(:,2)==400&base(:,3)==0&...       
        base(:,4)==0&base(:,5)~=0);    
    i=unique(base(z,5));
    if isempty(z)~=1
        while base(z(1),5)>2&&base(z(1),5)<200       
            z(1,:)=[];              
        end      
    end
        oppdd40x40=[oppdd40x40;base(z,:)];
        
    if oppdd40x40(1,5)>0
        while oppdd40x40(end,5)>0
            oppdd40x40(end,:)=[];
        end
    end
end
save([fpath '\oppdd40x40'],'oppdd40x40')

end