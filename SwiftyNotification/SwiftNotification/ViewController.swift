//
//  ViewController.swift
//  SwiftNotification
//
//  Created by 周正飞 on 2018/9/28.
//  Copyright © 2018年 Zafir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let noti = NewNotiDispose()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
    
    }
    
    @IBAction func next(_ sender: UIButton) {
         navigationController?.pushViewController(DetailController(), animated: true)
    }
    
    @IBAction func postAction(_ sender: UIButton) {
        print("发送通知name: zzf, age: 18")
        NewNotifications.MarketChangeNoti.post(("zzf", 18))
    }
}

