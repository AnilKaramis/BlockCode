//
//  SettingsViewController.swift
//  BlockCode
//
//  Created by AnılKaramış on 20.12.2024.
//

import UIKit

class SettingsViewController:UIViewController {
    private let viewModel: SettingsViewModelType
    
    init(viewModel: SettingsViewModelType) {
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
        view.backgroundColor = .systemTeal
    }
}
