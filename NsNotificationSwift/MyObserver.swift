//
//  MyObserver.swift
//  NsNotificationSwift
//
//  Created by abel on 15/10/22.
//  Copyright © 2015年 abel. All rights reserved.
//

import UIKit

class MyObserver: NSObject {
    var name:String = ""
    
    init(name:String){
        super.init()
        
        self.name = name
        NSNotificationCenter.defaultCenter().addObserver(self, selector:"downloadImage:",
            name: "DownloadImageNotification", object: nil)
    }
    
    func downloadImage(notification: NSNotification) {
        let userInfo = notification.userInfo as! [String: AnyObject]
        let value1 = userInfo["value1"] as! String
        let value2 = userInfo["value2"] as! Int
        
        print("\(name) 获取到通知，用户数据是［\(value1),\(value2)］")
        
        sleep(3)
        
        print("\(name) 执行完毕")
    }
    
    deinit {
        //记得移除通知监听
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }
    
    
}
