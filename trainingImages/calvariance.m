function calvariance(para)
load('features.txt');
belong=load(sprintf('kmeanbelong%d.txt',para));
record={};
record{para}=[];

for i=1:size(belong,1)
   record{belong(i)}(end+1,:)=features(i,:); 
end

vs=zeros(para,1);
for i=1:para
    x=record{i};
    y=mean(x);
    s=0;
    for j=1:size(x,1)
        z=x(j,:)-y;
        s=s+z*z';
    end
    vs(i,1)=sqrt(s/(size(x,1)+0.000001));
end
fid=fopen(sprintf('kmeansvar%d.txt',para),'w');
for i=1:para
    fprintf(fid,'%f\n',vs(i,1));
end
fclose(fid);

end