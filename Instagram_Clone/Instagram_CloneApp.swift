//
//  Instagram_CloneApp.swift
//  Instagram_Clone
//
//  Created by KARAN on 29/06/23.
//

import SwiftUI

@main
struct Instagram_CloneApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}


class AppDelegate:NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print("dskhdw")
        return true
    }
    
//    func applicationWillEnterForeground(_ application: UIApplication) {
//        <#code#>
//    }
}
