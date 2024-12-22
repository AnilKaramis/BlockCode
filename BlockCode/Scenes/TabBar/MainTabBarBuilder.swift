//
//  MainTabBarBuilder.swift
//  BlockCode
//
//  Created by AnılKaramış on 20.12.2024.
//

import UIKit

final class MainTabBarBuilder {
    class func buildViewController() -> [UIViewController] {
        
        let codeBlocksViewModel = CodeBlockViewModel()
        let codeBlocksViewController = CodeBlocksViewController(with: codeBlocksViewModel)
        setupViewController(viewController: codeBlocksViewController, tittle: "CodeBlocks", imageName: "")
        
        let workspaceViewModel = WorkspaceViewModel()
        let workspaceViewController = WorkspaceViewController(with: workspaceViewModel)
        setupViewController(viewController: workspaceViewController, tittle: "Workspace", imageName: "")
        
        let consoleViewModel = ConsoleViewModel()
        let consoleViewController = ConsoleViewController(with: consoleViewModel)
        setupViewController(viewController: consoleViewController, tittle: "Console", imageName: "")
        
        return [
            codeBlocksViewController,
            workspaceViewController,
            consoleViewController
        ]
    }
    class func setupViewController(viewController: UIViewController, tittle: String, imageName: String) {
        viewController.tabBarItem.title = tittle
        viewController.tabBarItem.image = UIImage(named: imageName)
    }
}

