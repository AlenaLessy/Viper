//
//  HotelsRouter.swift
//  Viper
//
//  Created by Алена Панченко on 13.02.2023.
//

import UIKit

/// Роутер экрана отелей
final class HotelsRouter: HotelsRouterInputProtocol {
    
    // MARK: - Public Properties
    
    var assemblyBuilder = HotelsAssemblyBuilder()

    // MARK: - Public Methods
      
    func pushViewController(index: Int, navigationViewController: UINavigationController) {
        let viewController = assemblyBuilder.makeHotelsModule(router: self, index: index)
        navigationViewController.pushViewController(viewController, animated: true)
    }
}
