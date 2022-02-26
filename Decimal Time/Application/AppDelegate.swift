//
//  AppDelegate.swift
//  Decimal Time
//
//  Created by Bassist_Zero on 2/26/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    // MARK: - Properties
    
    var window: UIWindow?
    
    // MARK: - UIApplicationDelegate

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        makeWindow()
        return true
    }

}

// MARK: - Private Methods

private extension AppDelegate {
    
    func makeWindow() {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
    }

}
