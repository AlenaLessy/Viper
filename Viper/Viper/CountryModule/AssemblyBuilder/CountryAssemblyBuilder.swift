//
//  CountryAssemblyBuilder.swift
//  Viper
//
//  Created by Алена Панченко on 14.02.2023.
//

import UIKit

/// Сборщик модулей экрана страны
final class CountryAssembly: CountryAssemblyProtocol {
    
    // MARK: - Public Methods
    
    func makeCountryModule(router: CountryRouterInputProtocol) -> UIViewController {
        let presenter = CountryPresenter()
        let view = CountryViewController()
        
        var interactor = makeInteractor()
        view.presenter = presenter
        presenter.view = view
        interactor.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
        return view
    }
    
    func makeInteractor() -> CountryInteractorInputProtocol {
        let networkService = NetworkService()
        return CountryInteractor(networkService: networkService)
    }
}
