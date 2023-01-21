//
//  SceneDelegate.swift
//  Today
//
//  Created by Chad Rutherford on 1/9/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = scene as? UIWindowScene else { return }
        let window = UIWindow(windowScene: windowScene)
        self.window = window
        let navController = UINavigationController(rootViewController: ReminderListViewController.makeReminderListViewController())
        window.rootViewController = navController
        window.makeKeyAndVisible()
    }
}
