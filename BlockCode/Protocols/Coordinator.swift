//
//  Coordinator.swift
//  BlockCode
//
//  Created by AnılKaramış on 19.12.2024.
//

import UIKit

protocol Coordinator:AnyObject {
    
    var rootCoordinator: Coordinator? { get set}
    var navigationController: UINavigationController { get }
    
    func start()
    func coordinate(coordinator:Coordinator)
    func didFinish(coordinator: Coordinator)
    func removeChildCoordinates()
    
}
