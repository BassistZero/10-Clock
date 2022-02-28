//
//  MainTabBarViewController.swift
//  Decimal Time
//
//  Created by Bassist_Zero on 2/26/22.
//

import UIKit

final class MainTabBarViewController: UITabBarController {
    
    // MARK: - UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupInitialState()
    }
    
}

// MARK: - Configuration

private extension MainTabBarViewController {

    func setupInitialState() {
        setupViewControllers()
        configureTabBar()
    }

    func configureTabBar() {
        // FIXME: - Use Swiftgen for color names
        tabBar.tintColor = UIColor(named: "active")
        tabBar.unselectedItemTintColor = UIColor(named: "unactive")
    }

}

// MARK: - Private Methods

private extension MainTabBarViewController {

    func setupViewControllers() {
        viewControllers = getConfiguredControllers()
    }
    
    func getConfiguredControllers() -> [UIViewController] {
        let controllers = getControllers()
        
        return controllers.enumerated().map {
            let tab = MenuTabs(rawValue: $0.offset)
            $0.element.tabBarItem = .init(title: tab?.title, image: tab?.image, selectedImage: tab?.image)
            $0.element.view.backgroundColor = .black
            
            return $0.element
        }
    }

    func getControllers() -> [UIViewController] {
        let controllers = [
            WorldClockModuleConfigurator().configure(),
            AlarmModuleConfigurator().configure(),
            StopwatchModuleConfigurator().configure(),
            TimerModuleConfigurator().configure()
        ]
        
        return controllers
    }
}
