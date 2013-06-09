function avi2images(inpv)

viobj=VideoReader(inpv);
read(viobj,inf);
numframes=viobj.NumberOfFrames 

for i=1:numframes
imwrite(read(viobj,i),sprintf('frame%d',i),'jpg');
end

end