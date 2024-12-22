//
//  CodeBlocksViewController.swift
//  BlockCode
//
//  Created by AnılKaramış on 22.12.2024.
//

import UIKit

class CodeBlocksViewController: UIViewController {
    
    private let viewModel: CodeBlocksViewModelType
    
     init(with viewModel: CodeBlocksViewModelType) {
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
        
    }
    private func setupSuperView() {
        view.backgroundColor = .systemIndigo
    }
}
