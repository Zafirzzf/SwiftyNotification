//
//  NewNotification.swift
//  SwiftNotification
//
//  Created by 周正飞 on 2018/10/11.
//  Copyright © 2018年 Zafir. All rights reserved.
//

import Foundation

class NewNotification {
    
    var name: String
    var handlers: [NewNotiHandler]
    
    init(name: String, handlers: [NewNotiHandler]) {
        self.name = name
        self.handlers = handlers
    }
}

class NewNotiHandler {
    
    weak var notiDispose: NewNotiDispose?
    var handler: NotiHandler
    
    init(dispose: NewNotiDispose,
         handler: @escaping NotiHandler) {
        self.notiDispose = dispose
        self.handler = handler
    }
}

class NewNotiDispose: Equatable {
    static let always = NewNotiDispose()
    deinit {
        NewNotificationCenter.newNotis.forEach { noti in
            noti.handlers.removeAll(where: { $0.notiDispose == nil })
        }
    }
    static func == (lhs: NewNotiDispose, rhs: NewNotiDispose) -> Bool {
        return twoObjectAddressIsEqual(lhs, rhs)
    }
}

func twoObjectAddressIsEqual(_ left: AnyObject?, _ right: AnyObject?) -> Bool {
    guard let left = left, let right = right else { return false }
    return Unmanaged.passUnretained(left).toOpaque() == Unmanaged.passUnretained(right).toOpaque()
}
