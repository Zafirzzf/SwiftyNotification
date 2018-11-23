//
//  NotificationsSets.swift
//  SwiftNotification
//
//  Created by 周正飞 on 2018/10/11.
//  Copyright © 2018年 Zafir. All rights reserved.
//

import Foundation
class NewNotifications {
    
    struct MarketChangeNoti: INewNotifioncation {
        typealias InfoType = (name: String, age: Int)
        static var name: String = "marketChangeNoti"
    }
    
    struct Finish: INewNotifioncation {
        static var name: String = "aaaaa"
        typealias InfoType = ()
    }
    
    struct FavoriteChange: INewNotifioncation {
        static var name: String = "favoriteChange"
        typealias InfoType = (Bool, String)
    }
}


