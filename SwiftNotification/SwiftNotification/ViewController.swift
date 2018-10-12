//
//  ViewController.swift
//  SwiftNotification
//
//  Created by 周正飞 on 2018/9/28.
//  Copyright © 2018年 Zafir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let noti = NotiDispose()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        
        let button = UIButton(frame: CGRect(x: 30, y: 100, width: 50, height: 50))
        button.backgroundColor = .red
        button.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc func buttonClick() {
        NewNotifications.MarketChangeNoti().post((name: "zlll", age: 22))
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        navigationController?.pushViewController(DetailController(), animated: true)
    }
}

