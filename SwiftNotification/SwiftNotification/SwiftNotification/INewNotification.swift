//
//  NewNotification.swift
//  SwiftNotification
//
//  Created by 周正飞 on 2018/10/11.
//  Copyright © 2018年 Zafir. All rights reserved.
//

import Foundation

protocol INewNotifioncation {
    associatedtype InfoType
    var name: String { get }
}

extension INewNotifioncation {
    func addObserve(_ dispose: NewNotiDispose, response: @escaping (InfoType) -> ()) {
        NewNotificationCenter.addObserve(dispose: dispose, name: name) { (object) in
            guard let info = object as? InfoType else { return }
            response(info)
        }
    }
    
    func post(_ info: InfoType) {
        NewNotificationCenter.postNotification(name: name, info: info as AnyObject)
    }
}

