import Foundation

class Notify {
    static func showNotification() -> Void {
        print("testNotification called")
        let notification = NSUserNotification()
        
        // All these values are optional
        notification.title = "Test of notification"
        notification.subtitle = "Subtitle of notifications"
        notification.informativeText = "Main informative text"
        notification.deliveryDate = Date()
        notification.soundName = NSUserNotificationDefaultSoundName
        
        
        NSUserNotificationCenter.default.deliver(notification)
        
        print("done")
    }
}




