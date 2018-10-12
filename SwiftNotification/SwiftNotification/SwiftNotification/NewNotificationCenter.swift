//
//  NewNotificationCenter.swift
//  SwiftNotification
//
//  Created by 周正飞 on 2018/9/28.
//  Copyright © 2018年 Zafir. All rights reserved.
//

import UIKit

typealias NotiHandler = (AnyObject) -> ()

class NewNotificationCenter {
    
    static var newNotis = [NewNotification]()
    
    static func addObserve(dispose: NotiDispose,
                           name: String,
                           handler: @escaping NotiHandler) {
        
        if let noti = newNotis.first(where: { $0.name == name }) {
            if let exitNoti = noti.handlers.first(where: { $0.notiDispose == dispose }) {
                exitNoti.handler = handler
            } else {
                noti.handlers.append(NewNotiHandler(dispose: dispose, handler: handler))
            }
        }
        
        let newNoti = NewNotification(name: name, handlers: [NewNotiHandler(dispose: dispose, handler: handler)])
        newNotis.append(newNoti)
    }
    
    static func postNotification(name: String,
                                 info: AnyObject) {
        guard let theNoti = newNotis.first(where: { $0.name == name }) else { return }
        theNoti.handlers.forEach { $0.handler(info) }
    }
}

