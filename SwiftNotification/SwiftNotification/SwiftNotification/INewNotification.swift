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
    var dispose: NotiDispose? { get set }
    init(dispose: NotiDispose?)
}

extension INewNotifioncation {
    func addObserve(response: @escaping (InfoType) -> ()) {
        guard let dispose = dispose else {
            fatalError("Observer's dispose can't be nil")
        }
        NewNotificationCenter.addObserve(dispose: dispose, name: name) { (object) in
            guard let info = object as? InfoType else { return }
            response(info)
        }
    }
    
    func post(_ info: InfoType) {
        NewNotificationCenter.postNotification(name: name, info: info as AnyObject)
    }
}

