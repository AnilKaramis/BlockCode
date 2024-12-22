//
//  AppCoordinator.swift
//  BlockCode
//
//  Created by AnılKaramış on 20.12.2024.
//

import UIKit

final class AppCoordinator: BaseCoordinator {
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
        super.init(navigationController: UINavigationController())
    }
    
    override func start() {
        self.window.rootViewController = navigationController
        self.window.makeKeyAndVisible()
        
//        showMainTabBar()
    }
}

//private extension AppCoordinator {
//    func showMaintabBar() {
//        let mainTabBarCoordinator = MainTabBarCoordinator(navigationController: navigationController)
//        
//    }
//}
