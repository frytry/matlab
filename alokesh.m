
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
m1=[0 0 0; 0 0 0; 0 0 0];
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
    end
end




% if(ip(a,b)>=ic+t2)
%     d=2;
% elseif(ic+t1<=ip&&ip<ic+t2)
%         d=1;
% elseif(ic-t1<=ip&&ip<ic+t1)
%     d=0;
% elseif(ic-t2<=ip&&ip<ic-t1)
%     d=-1;
% else
%     d=-2;
% end

% X = sprintf(' d(i_p,i_c,t_1,t_2)= %d.',d);
% disp(X)
% disp('d(i_p,i_c,t_1,t_2)=%d',d);
% disp(d);
% m=[1 0 1; 2 C -1; 2 -2 -2];
c1=[0 0 0; 0 0 0; 0 0 0];
c2=[0 0 0; 0 0 0; 0 0 0];
c3=[0 0 0; 0 0 0; 0 0 0];
c4=[0 0 0; 0 0 0; 0 0 0];
for a=1:3;
    for b=1:3;
         if(m1(a,b)==2)
         c1(a,b)=1;
         else c1(a,b)=0;
        end
    end
end
for a=1:3;
    for b=1:3;
         if(m1(a,b)==1)
         c2(a,b)=1;
         else c2(a,b)=0;
        end
    end
end
for a=1:3;
    for b=1:3;
         if(m1(a,b)==-1)
         c3(a,b)=1;
         else c3(a,b)=0;
        end
    end
end
for a=1:3;
    for b=1:3;
         if(m1(a,b)==-2)
         c4(a,b)=1;
         else c4(a,b)=0;
        end
    end
end
disp('pixel matrix');
disp(ip);
y = sprintf(' Code_1= %d %d %d %d %d %d %d %d',c1(1,1),c1(1,2),c1(1,3),c1(2,3),c1(3,3),c1(3,2),c1(3,1),c1(2,1));
disp(y);
disp(c1);
y = sprintf(' Code_2= %d %d %d %d %d %d %d %d',c2(1,1),c2(1,2),c2(1,3),c2(2,3),c2(3,3),c2(3,2),c2(3,1),c2(2,1));
disp(y);
disp(c2);
y = sprintf(' Code_3= %d %d %d %d %d %d %d %d',c3(1,1),c3(1,2),c3(1,3),c3(2,3),c3(3,3),c3(3,2),c3(3,1),c3(2,1));
disp(y);
disp(c3);
y = sprintf(' Code_4= %d %d %d %d %d %d %d %d',c4(1,1),c4(1,2),c4(1,3),c4(2,3),c4(3,3),c4(3,2),c4(3,1),c4(2,1));
disp(y);
disp(c4);