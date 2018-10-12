# SwiftNotification
A new advance NotificationCenter by Swift

### CocoaPods

```
pod 'SwiftyNotification'

```

 // Before:

**Observer** 

```
NotificationCenter.default.addObserver(forName: NSNotification.Name(rawValue: "SomeChange"), object: nil, queue: nil) { (noti) in
    guard let info = noti.userInfo else { return }
    // info["Some hard to remember key"] ....
    // What's the type I need ?
}

```

`NSNotificationName` make me go crazy. It's too troublesome.

What's the content of `userinfo` , What's the key and What I want?  It must take your much time.

**Notification Poster**

```
NotificationCenter.default.post(name: NSNotification.Name("SomeChange"), object: nil, userInfo: ["What's the key": someValue])
```

When you want to post a notification. You had to search the `NotificationName` of the notification. And then, You have to find the corresponding Key of `userinfo`. 


## I want to be simple


**Now**

You just need creat a struct for one Notification.

You can assign the type of notification's userinfo with the help of protocol.

You no longer need to guess what's the info in the notification

```
struct MarketChangeNoti: INewNotifioncation {
    typealias InfoType = (name: String, age: Int)
    var name: String = "marketChangeNoti"
}

```

**Observer** 

```
NewNotifications.MarketChangeNoti().addObserve(notiDispose, response: ((name: String, age: Int)) -> ())
// info's type is a Tuple which contain String and Int, we also know the meaning of info

MarketChangeNoti().addObserve(notiDispose) { (result) in
    print(result.name, "3232" , result.age)
}
```

**Notification Poster**

```
NewNotifications.MarketChangeNoti().post(info: (name: String, age: Int)
```
At a glance, the notification info need `name` and `age`

**Remove Notifications**

```
var notiDispose = NewNotiDispose()

NewNotifications.MarketChangeNoti().addObserve(notiDispose)

```
or 

```
NewNotifications.MarketChangeNoti().addObserve(.always)
```