//
//  MainTabBarViewModel.swift
//  BlockCode
//
//  Created by AnılKaramış on 20.12.2024.
//

import UIKit

final class MainTabBarViewModel {
    
    var didGoToSettingsScreen: (() -> Void)?
}

extension MainTabBarViewModel: MainTabBarViewModelType {
    func showSettingsScreen() {
        didGoToSettingsScreen?()
    }
}
