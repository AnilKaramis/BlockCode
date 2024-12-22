//
//  WorkspaceViewController.swift
//  BlockCode
//
//  Created by AnılKaramış on 22.12.2024.
//

import UIKit

class WorkspaceViewController: UIViewController {
    
    let viewModel: WorkspaceViewModelType
    
    init(with viewModel: WorkspaceViewModelType) {
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
        view.backgroundColor = .darkGray
    }
}
