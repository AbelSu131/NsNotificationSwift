//
//  ViewController.swift
//  NsNotificationSwift
//
//  Created by abel on 15/10/22.
//  Copyright © 2015年 abel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
     let observers = [MyObserver(name: "观察器1"),MyObserver(name: "观察器2")]

    override func viewDidLoad() {
        super.viewDidLoad()
        /*
        let notificationCenter = NSNotificationCenter.defaultCenter()
        let operationQueue = NSOperationQueue.mainQueue()
        
        let applicationDidEnterBackgroundObserver = notificationCenter.addObserverForName(UIApplicationDidEnterBackgroundNotification, object: nil, queue: operationQueue, usingBlock: {(notification:NSNotification!) in print("程序进入到后台了")
        })
        //如果不需要的话，记得把相应的通知注册给取消，避免内存浪费或奔溃
        //notificationCenter.removeObserver(applicationDidEnterBackgroundObserver)
        */
        
            print("发送通知")
            NSNotificationCenter.defaultCenter().postNotificationName("DownloadImageNotification",
                object: self, userInfo: ["value1":"hangge.com", "value2" : 12345])
            print("通知完毕")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

