//
//  NewNotification.swift
//  SwiftNotification
//
//  Created by 周正飞 on 2018/10/11.
//  Copyright © 2018年 Zafir. All rights reserved.
//

import Foundation

public protocol INewNotifioncation {
    associatedtype InfoType
    static var name: String { get }
}

public extension INewNotifioncation {
    static func addObserve(_ dispose: NewNotiDispose, response: @escaping (InfoType) -> ()) {
        NewNotificationCenter.addObserve(dispose: dispose, name: Self.name) { (object) in
            guard let info = object as? InfoType else { return }
            response(info)
        }
    }
    
    static func post(_ info: InfoType) {
        NewNotificationCenter.postNotification(name: Self.name, info: info as AnyObject)
    }
}

