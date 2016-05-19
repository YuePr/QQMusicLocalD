//
//  MusicListVC.swift
//  QQMusicD
//
//  Created by YuePr on 16/5/16.
//  Copyright © 2016年 YuePr. All rights reserved.
//

import UIKit

class MusicListVC: UITableViewController {
    
    var musicMs: [MusicListItem] = [MusicListItem](){
    
    
        didSet{
        
            tableView.reloadData()
        }
    }

    override func viewDidLoad() {
        
       /// #MARK: - viewDidLoad
        super.viewDidLoad()
        setUpInit()
    
        DataTool.getMusicList { (musicItem) -> () in
            print(musicItem)
            self.musicMs = musicItem
        
        }
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}


extension MusicListVC{

   private func setUpInit(){
    
        
        setupTableView()
        setupNavigationBar()
    }
    
    private func setupTableView()->(){
        
        let backImageView = UIImageView(image: UIImage(named:"QQListBack.jpg"))
        tableView.backgroundView = backImageView
        
        tableView.rowHeight = 60
        tableView.separatorStyle = .None
    }

    private func setupNavigationBar()->(){
        navigationController?.navigationBarHidden = true
    
    
    }
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }


}
extension MusicListVC{
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.musicMs.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = MusicListCell.cellWithTableViewCell(tableView)
        
        // 取出模型
        
        let musicM = self.musicMs[indexPath.row]
        cell.musicM = musicM
        return cell
    }


}
