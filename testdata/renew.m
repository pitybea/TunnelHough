function renew()
tsks=load('E:\tunnelHough\tasklist.lst');
num=tsks(1,1);
tk=[];
for i=1:num
    tk(i,:)=tsks(i+1,:);
end
for i=1:size(tk,1)
    j=10;
    while j<121
        findmincenterpara(j,tk(i,1));
        j=j+10;
    end
end

end