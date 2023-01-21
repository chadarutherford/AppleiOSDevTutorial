//
//  AppDelegate.swift
//  Today
//
//  Created by Chad Rutherford on 1/9/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        UINavigationBar.appearance().tintColor = .todayPrimaryTint
        UINavigationBar.appearance().backgroundColor = .todayNavigationBackground
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.configureWithOpaqueBackground()
        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
        
        return true
    }
}
