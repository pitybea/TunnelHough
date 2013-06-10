

from __future__ import print_function
import os
def test():
    os.chdir('E:\\TunnelHough\\trainingImages')
    
    ins = open( "list.lst", "r" )
    array = []
    for line in ins:
        array.append( line.strip() )
    
    fls=array[1:int(array[0])+1]
    
#    print len(fls)
    
    ins.close()
    
    positions=[]
    features=[]
    
    
    for fl in fls:
#        print fl+'.txt'
        temfile=open(fl+'.txt','r')
        num=int(temfile.readline().strip())
        for i in range(0, num):
            positions.append(temfile.readline().strip())
            features.append(temfile.readline().strip())
        
        temfile.close()
    
    
    fileposs=open('postions.txt','w')
#    print(len(positions),file=fileposs)
    for pos in positions:
        print(pos,file=fileposs)
    
    fileposs.close()
    
    
    fileposs=open('features.txt','w')
#    print(len(features),file=fileposs)
    for fea in features:
        print(fea,file=fileposs)
    
    fileposs.close()
    
            
        
        
    


if __name__ == '__main__':
    test()