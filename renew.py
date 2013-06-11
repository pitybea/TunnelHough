import os


def test():
    os.chdir('/home/pitybea/TH')
    os.system('rm testdata/*.txt testdata/*.jpg')
    #os.system('cp originalData/frame92.* testdata/')
    #os.system('cp originalData/frame92_* testdata/')
    
    ins = open( "tasklist.lst", "r" )
    num=int(ins.readline().strip())
    array = []
    for i in range(0,num):
        array.append(ins.readline().strip())
    
    for ea in array:
        cmd='cp originalData/frame%s.* testdata/'%(ea)
        print cmd
        os.system(cmd)
        cmd='cp originalData/frame%s_* testdata/'%(ea)
        print cmd
        os.system(cmd)
        cmd='cp trainingImages/kmean* testdata/'
        print cmd
        os.system(cmd)
        cmd='cp groundTruth/%s testdata/frame%d_gt.txt'%( ('Ntrue%5d.txt'%(int(ea)-1)).replace(' ','0') ,int(ea))
        print cmd
        os.system(cmd)
        
        
    

if __name__ == '__main__':
    test()
    