//
//  DataTool.swift
//  QQMusicD
//
//  Created by YuePr on 16/5/18.
//  Copyright © 2016年 YuePr. All rights reserved.
//

import UIKit

class DataTool: NSObject {
    
     class func getMusicList(result:(musicItem:[MusicListItem])->()){
    
        guard let path = NSBundle.mainBundle().pathForResource("Musics.plist", ofType: nil) else{
            
            result(musicItem: [MusicListItem]())
            
            return
            
        }
        
        guard let dictArray = NSArray(contentsOfFile: path)else{
        
            result(musicItem: [MusicListItem]())
            return
        }
        
        
        var resultItem = [MusicListItem]()
        for dict in dictArray{
        
            let musicItem = MusicListItem(dict: dict as![String:AnyObject])
            resultItem.append(musicItem)
        }
        
        result(musicItem:resultItem)
    
    }

}
