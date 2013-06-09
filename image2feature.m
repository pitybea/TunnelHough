
function image2feature(inp)

I=imread(sprintf('%s.jpg',inp));
I=single(rgb2gray(I));
[f,d] = vl_sift(I);
f=f';
d=d';
d=double(d);

fea=fopen(sprintf('%s.txt',inp),'w');
n=size(f,1);
m=size(d,2);
fprintf(fea,'%d\n',n);
for i=1:n
    fprintf(fea,'%f ',f(i,:));
    fprintf(fea,'\n');
   
    s=sum(d(i,:));
    
    fprintf(fea,'%f ',d(i,:)/s);
    fprintf(fea,'\n');
end


fclose(fea);

end