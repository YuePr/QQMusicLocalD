//
//  MusicListCell.swift
//  QQMusicD
//
//  Created by YuePr on 16/5/17.
//  Copyright © 2016年 YuePr. All rights reserved.
//

import UIKit

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
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
//    
//    override func awakeFromNib(){
    
        
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