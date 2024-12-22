//
//  ConsoleViewController.swift
//  BlockCode
//
//  Created by AnılKaramış on 22.12.2024.
//

import UIKit

class ConsoleViewController: UIViewController {
    
    let viewModel: ConsoleViewModelType
    
    init(with viewModel: ConsoleViewModelType) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }

    private func setup() {
        setupSuperView()
    }
    
    private func setupSuperView() {
        view.backgroundColor = .systemGreen
    }
}
