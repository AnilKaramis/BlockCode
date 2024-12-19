//
//  Coordinator.swift
//  BlockCode
//
//  Created by AnılKaramış on 19.12.2024.
//

import UIKit

protocol Coordinator {
    
    var rootCoordinator: Coordinator? { get set}
    var navigationController: UINavigationController { get }
    
    func start()
    func coordinate(coordinator:Coordinator)
    func didFinish(coordinator: Coordinator)
    func removeChildCoordinates()
    
}

class new:UIViewController {
    func example1(Sadecetoplamalaradakullan x:Int) {
        
    }
    func example2(x:Int) {
         
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        example2(x: 10)
        example1(Sadecetoplamalaradakullan: 10)
    }
}
