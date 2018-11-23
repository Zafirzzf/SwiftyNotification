//
//  ThirdViewController.swift
//  SwiftNotification
//
//  Created by 周正飞 on 2018/10/12.
//  Copyright © 2018年 Zafir. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .purple
        let button = UIButton(frame: CGRect(x: 30, y: 100, width: 100, height: 50))
        button.backgroundColor = .black
        button.setTitle("发送通知", for: .normal)
        button.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
        view.addSubview(button)
    }

    @objc func buttonClick() {
        print("发送通知: name: zll, age: 16")
        NewNotifications.MarketChangeNoti.post((name: "zll", age: 16))
    }
}
