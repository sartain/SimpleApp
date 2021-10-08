//
//  ViewController.swift
//  TemplateProject
//
//  Created by Alex Sartain on 08/10/2021.
//

import UIKit

class ViewController: UIViewController {

    let viewControllerRouter: ViewControllerRouting
    
    init(viewControllerRouter: ViewControllerRouting) {
        self.viewControllerRouter = viewControllerRouter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemBackground
        title = localize("first_view_controller_title")
        
        //Consider reference cycle
        let action = UIAction { [weak self] _ in
            self?.viewControllerRouter.navigateToDetailViewController()
        }
        
        let button = UIButton(primaryAction: action)
        let buttonTitle = localize("first_view_controller_button")
        button.setTitle(buttonTitle, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .secondarySystemBackground
        button.setTitleColor(.label, for: .normal)
        button.titleLabel?.adjustsFontForContentSizeCategory = true
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .body)
        button.layer.cornerRadius = 10
        
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            button.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor, constant: 15),
            button.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor, constant: -15),
            button.heightAnchor.constraint(greaterThanOrEqualToConstant: 44)
        ])
    }


}

