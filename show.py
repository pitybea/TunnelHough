import sys


import cv2  
import sys
import os
pedhw=15
pedhh=40

byhw=30
byhh=30


def test():
    os.chdir('E:\\TunnelHough')
    imagefilename = 'testdata\\frame92.jpg'

    img=cv2.imread(imagefilename, 1)
    
    
    cv2.imshow("img",img);
    cv2.waitKey (0);
    
  
      
    #show image  
   
if __name__ == '__main__':
    test()
    
