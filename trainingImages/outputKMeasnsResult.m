function outputKMeasnsResult()
load('features.txt');
i=10;
while i<121
    [idx,c]=kmeans(features,i,'emptyaction','drop','MaxIter',10000);
    fid=fopen(sprintf('kmeancenter%d.txt',i),'w');
    for j=1:size(c,1)
        fprintf(fid,'%f ',c(j,:));
        fprintf(fid,'\n');
    end
    fclose(fid);
    fid=fopen(sprintf('kmeanbelong%d.txt',i),'w');
    
    fprintf(fid,'%d\n',idx);
        
    fclose(fid);
    i=i+10;
    i
end
end