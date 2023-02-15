//
//  CountryRouter.swift
//  Viper
//
//  Created by Алена Панченко on 13.02.2023.
//

import UIKit

/// Роутер экрана страны
final class CountryRouter: CountryRouterInputProtocol {
    
    // MARK: - Public Properties
    
    let assembly: CountryAssemblyProtocol?
    let navigationController: UINavigationController?
    
    // MARK: - Private Properties
    
     private let hotelRouter = HotelsRouter()

    // MARK: - Initializers
    
    init(assembly: CountryAssemblyProtocol, navigationController: UINavigationController) {
        self.assembly = assembly
        self.navigationController = navigationController
    }

    // MARK: - Public Methods
    
    func initialViewController() {
        guard let navigationController,
              let viewController = assembly?.makeCountryModule(router: self) else { return }
        navigationController.viewControllers = [viewController]
    }
    
    func goToHotel(index: Int) {
        guard let navigationController else { return }
        hotelRouter.pushViewController(index: index, navigationViewController: navigationController)
    }
}
