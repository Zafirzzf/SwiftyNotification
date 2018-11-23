//
//  DetailController.swift
//  SwiftNotification
//
//  Created by 周正飞 on 2018/10/12.
//  Copyright © 2018年 Zafir. All rights reserved.
//

import UIKit
class DetailController: UIViewController {
    deinit {
        print("详情页销毁")
    }
    
    var notiDispose = NewNotiDispose()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        let button = UIButton(frame: CGRect(x: 30, y: 100, width: 100, height: 50))
        button.backgroundColor = .black
        button.setTitle("下一页", for: .normal)
        button.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
        view.addSubview(button)
        addObserves()
    }
    
    func addObserves() {
        print("注册了通知")
        NewNotifications.MarketChangeNoti.addObserve(.always) { (result) in
            print("详情页收到通知always形式:", "name:", result.name, "age:", result.age)
        }
        
        NewNotifications.MarketChangeNoti.addObserve(notiDispose) { (result) in
            print("详情页收到通知:", "随控制器消失而取消注册", result.name, result.age)
        }
    }
    
    @objc func buttonClick() {
        navigationController?.pushViewController(ThirdViewController(), animated: true)
    }
}
