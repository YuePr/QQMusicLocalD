//
//  UIView+Extention.swift
//  QQMusicD
//
//  Created by YuePr on 16/5/20.
//  Copyright © 2016年 YuePr. All rights reserved.
//

import UIKit
import Foundation

extension UIView{

    public var x:CGFloat{
    
        get{
            return self.frame.origin.x
        
        
        }
        set{

            var tempFrame = self.frame
            tempFrame.origin.x = newValue
            self.frame = tempFrame
        
        }
    
    }
    
    public var y:CGFloat{
        
        get{
            return self.frame.origin.y
            
            
        }
        set{
            
            var tempFrame = self.frame
            tempFrame.origin.y = newValue
            self.frame = tempFrame
            
        }
        
    }
    public var width:CGFloat{
        
        get{
            return self.frame.size.width
            
            
        }
        set{
            
            var tempFrame = self.frame
            tempFrame.size.width = newValue
            self.frame = tempFrame
            
        }
        
    }
    
    public var height:CGFloat{
        
        get{

            return self.frame.size.height
            
            
        }
        set{
            
            var tempFrame = self.frame
            tempFrame.size.height = newValue
            self.frame = tempFrame
            
        }
        
    }

    public var centers:CGPoint{
        
        get{
            return self.center
//            
//            let centerX = self.center.x
//            let centerY = self.center.y
//            let centerP = CGPointMake(centerX, centerY)
//            return centerP
            
        }
        
        set{
            
            var tempFrame = self.center
            tempFrame = newValue
           
            self.center = tempFrame
            
            print("center is",self.center)
            
        }
        
    }


    
 
}
