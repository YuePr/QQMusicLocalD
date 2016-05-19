//
//  MusicListCell.swift
//  QQMusicD
//
//  Created by YuePr on 16/5/17.
//  Copyright © 2016年 YuePr. All rights reserved.
//

import UIKit

public enum  AnimationType{
    case Translation
    case Rotation
}

class MusicListCell: UITableViewCell {

    
    @IBOutlet weak var singerIconImageV: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var singerNameLabel: UILabel!
    
    
    
    var musicM :MusicListItem?{
        didSet{
            if musicM?.icon != nil{
                singerIconImageV.image = UIImage(named: (musicM?.icon)!)
            }
            nameLabel.text = musicM?.name
            singerNameLabel.text = musicM?.singer
        
        }
    
    }
    
}


extension MusicListCell{
    
    class func cellWithTableViewCell(tableview:UITableView)->MusicListCell{
    
    let cellID = "musicListCellID"
        
    var cell = tableview.dequeueReusableCellWithIdentifier(cellID) as? MusicListCell
        
        if cell == nil{
        cell = NSBundle.mainBundle().loadNibNamed("MusicListCell", owner: nil, options: nil).first as? MusicListCell
        
        }
        

        return cell!
    }
    
    
}


extension MusicListCell{


    func beginAnimation(type:AnimationType)->(){
    
        switch type {
            
        case .Rotation:
            self.layer.removeAnimationForKey("rotation")
            let animation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
            animation.values = [M_PI*0.25,0]
            animation.duration = 0.2
            self.layer.addAnimation(animation, forKey: "rotation")

            
        case .Translation:
            self.layer.removeAnimationForKey("translation")
            let animation = CAKeyframeAnimation(keyPath: "transform.translation.x")
            animation.values = [50,0]
            animation.duration = 0.2
            self.layer.addAnimation(animation, forKey: "translation")
            
        }
    
    }
}

extension MusicListCell{
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        singerIconImageV.layer.cornerRadius = singerIconImageV.width*0.5
        print(singerIconImageV.width)
        singerIconImageV.layer.masksToBounds = true
        
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    override func setHighlighted(highlighted: Bool, animated: Bool) {
        
    }
    


}