function findmincenterpara(cen,inx)
centers=load(sprintf('kmeancenter%d.txt',cen));
frm=load(sprintf('frame%d_fea.txt',inx));

dds=[];
inxs=[];

for i=1:size(frm,1)
    x=frm(i,:);
    dis=[];
    for j=1:size(centers,1)
        y=centers(j,:);
        z=x-y;
        dis(end+1)=sqrt(z*z');
    end
    [val,ind]=min(dis);
    dds(end+1)=val;
    inxs(end+1)=ind;
end

fid=fopen(sprintf('frame%d_k%d_dis.txt',inx,cen),'w');
fprintf(fid,'%f\n',dds);
fclose(fid);

fid=fopen(sprintf('frame%d_k%d_indx.txt',inx,cen),'w');
fprintf(fid,'%d\n',inxs);
fclose(fid);


end