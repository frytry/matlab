% prompt = 'ip=';
% ip=input(prompt);
% prompt = 'ic=';
% ic=input(prompt);
ip=[67 65 69; 71 65 62; 80 12 10];
ic=ip(2,2);
prompt = 't1=';
t1=input(prompt);
prompt = 't2=';
t2=input(prompt);
m1=[];
addpath('C:\matlab');
ip=imread('black.png');
imhist(ip);
ic=ip(88,78);
c1=[];
[ipx, ipy]=size(ip);
for ii=1:3:ipx
  for jj=1:3:ipy
  ic=ip(ii,jj);
    for a=1:3;
        for b=1:3;
         if(ip(a,b)>=ic+t2)
    d=2;
         elseif(ic+t1<=ip(a,b)&&ip(a,b)<ic+t2)
        d=1;
         elseif(ic-t1<=ip(a,b)&&ip(a,b)<ic+t1)
    d=0;
         elseif(ic-t2<=ip(a,b)&&ip(a,b)<ic-t1)
    d=-1;
         else
    d=-2;
         end
         m1(a,b)=d;
         M1(ii,jj)=d;
        end    
    end
  end
end

for a=1:(ipx-1);
    for b=1:(ipy-2);
         if(M1(a,b)==2)
         c1(a,b)=1;
         else c1(a,b)=0;
        end
    end
end


        

for a=1:(ipx-1);
    for b=1:(ipy-2);
         if(M1(a,b)==1)
          c2(a,b)=1;
         else c2(a,b)=0;
        end
    end
end

for a=1:(ipx-1);
    for b=1:(ipy-2);
          if(M1(a,b)==-1)
         c3(a,b)=1;
         else c3(a,b)=0;
        end
    end
end

for a=1:(ipx-1);
    for b=1:(ipy-2);
         if(M1(a,b)==-2)
         c4(a,b)=1;
         else c4(a,b)=0;
        end
    end
end

