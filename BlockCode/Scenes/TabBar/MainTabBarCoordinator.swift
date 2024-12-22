//
//  MainTabBarCoordinator.swift
//  BlockCode
//
//  Created by AnılKaramış on 20.12.2024.
//

import UIKit

final class MainTabBarCoordinator: BaseCoordinator {
    
    override init(navigationController: UINavigationController) {
        super.init(navigationController: navigationController)
    }
    override func start() {
        let mainTabBarViewModel = MainTabBarViewModel()
        let mainTabBarController = MainTabBarViewController(with: mainTabBarViewModel)
        
        mainTabBarViewModel.didGoToSettingsScreen = { [weak self] in
            self?.showSettingsScreen()
        }
        mainTabBarController.setViewControllers(MainTabBarBuilder.buildViewController(), animated: true)
        navigationController.setViewControllers([mainTabBarController], animated: true)
    }
}
private extension MainTabBarCoordinator {
    func showSettingsScreen() {
        let settingsCoordinator = SettingsCoordinator(navigationController: navigationController)
        coordinate(coordinator: settingsCoordinator)
    }
}
