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
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        NewNotifications.MarketChangeNoti().post((name: "zll", age: 16))
    }

}
