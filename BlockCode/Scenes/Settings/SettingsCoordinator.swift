//
//  SettingsCoordinator.swift
//  BlockCode
//
//  Created by AnılKaramış on 20.12.2024.
//

import UIKit

final class SettingsCoordinator: BaseCoordinator {
    
    override init(navigationController: UINavigationController) {
        super.init(navigationController: navigationController)
    }
    override func start() {
        let settingsViewModel = SettingsViewModel()
        let settingsViewController = SettingsViewController(viewModel: settingsViewModel)
        
        navigationController.present(settingsViewController, animated: true)
    }
}
