//
//  AppDelegate.swift
//  Architecture
//
//  Created by 123 on 02.04.2019.
//  Copyright © 2019 KaVa. All rights reserved.
//

import UIKit

// безопасное извлечение из массива
extension Collection {
    subscript(safe index: Index) -> Element? {
        return safeObject(at: index)
    }
    
    private func safeObject(at index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}

// превращаем массив в типа словаря
extension Array where Element == String {
    subscript(name value: String) -> [String] {
        return filter { str in
            str == value
        }
    }
    
    subscript(condition: (String) -> Bool) -> [String] {
        return filter(condition)
    }
    
   
}

let arrayStrings = ["av", "ad", "qw", "gh"]
let filteredArray = arrayStrings[{$0 == "av"}]

// universal
extension Array {
    subscript(condition: (Element) -> Bool) -> [Element] {
        return filter(condition)
    }
}

// берем как в словаре типа keys
extension Array where Element == CGSize {
    var heights: [CGFloat] {
        return [CGFloat](Set(map{$0.height})).sorted()
    }
}

let arraySizes = [CGSize(width: 12, height: 32), CGSize(width: 16, height: 39), CGSize(width: 19, height: 35), CGSize(width: 11, height: 37)]

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    private let injectInteractor = InjectInteractor.init()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        injectInteractor.register()
        
        print(NSLocalizedString("Hello", comment: ""))
        
        let mainRouter = injectInteractor.get(MainRouter.self)
        mainRouter?.root(&window)
        
        let arr = arraySizes.heights
        print(arr)
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

