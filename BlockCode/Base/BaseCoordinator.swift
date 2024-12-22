//
//  BaseCoordinator.swift
//  BlockCode
//
//  Created by AnılKaramış on 20.12.2024.
//

import UIKit

class BaseCoordinator: Coordinator {
    
    weak var rootCoordinator: Coordinator?
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        fatalError("Start method should be implemented.")
    }
    
    func coordinate(coordinator: any Coordinator) {
        childCoordinators.append(coordinator)
        coordinator.rootCoordinator = self
        coordinator.start()
    }
    
    func didFinish(coordinator: any Coordinator) {
        if let index = childCoordinators.firstIndex(where: { $0 === coordinator }) {
            childCoordinators.remove(at: index)
        }
    }
    
    func removeChildCoordinates() {
        childCoordinators.forEach { $0.removeChildCoordinates() }
        childCoordinators.removeAll()
    }
}
