//
//  ViewControllerRouter.swift
//  TemplateProject
//
//  Created by Alex Sartain on 08/10/2021.
//

import Foundation
import UIKit

protocol ViewControllerRouting {
    func navigateToDetailViewController()
}

class ViewControllerRouter: ViewControllerRouting {
    weak var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func navigateToDetailViewController() {
        let detailViewController = DetailViewController()
        navigationController?.pushViewController(detailViewController, animated: true)
    }
}
