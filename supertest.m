vop=VOP';
vop=vop*2;
smav=[];
x=[];
disp('Detected vops')
disp(vop);
disp('Real vops');
disp(sm);
%average
[sma vv]=size(sm);
smA=[];
for i=1:sma
    x(i)=sm(i,1)+sm(i,2);
   smA(i)=x(i)/2;
end
aa=size(vop);
runn=aa(1,1);
sv=[];
dv=[];
if vop(1)<sm(1,1)
sv(1)=vop(1);
end
countv=0;
countw=1;
for b=1:runn
    for a=1:runn
    if vop(b)>=sm(a,1)&&vop(b)<=sm(a,2)
        countv=countv+1;
        dv(countv)=vop(b);
    elseif vop(b)>=sm(a,2)&&vop(b)<=sm(a+1,1)
        countw=countw+1;
        sv(countw)=vop(b);
    end
    end
end
%sma=sma';

disp('Matched Vops matrix');
Dv=dv';
disp(Dv);
disp('Spurious Vop matrix')
Sv=sv';
disp(Sv);
DV=size(vop);
DV=DV(1,1);
jM=[];%jude matrix
jmM=[];
[Svs, Svb]=size(Sv);
for j=1:Svs
    for i=1:sma
    jM(i)=smA(i)-Sv(j);
    jM(i)=jM(i)*jM(i);
    jM(i)=sqrt(jM(i));
    end
jmM(j)=min(jM);
end

disp('Summary');
disp('=======');
disp(' ');
disp('Distance between fasles');
disp(jmM');

str=sprintf('Total detected vowels =%d',DV);
disp(str);
RV=size(sm);
RV=RV(1,1);
str=sprintf('Total vowels according to TIMIT=%d',RV);
disp(str);