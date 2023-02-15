//
//  CountryAssemblyBuilder.swift
//  Viper
//
//  Created by Алена Панченко on 14.02.2023.
//

import UIKit

/// Сборщик модулей экрана страны
final class CountryAssemblyBuilder: CountryAssemblyBuilderProtocol {
    
    // MARK: - Public Methods
    
    func makeCountryModule(router: CountryRouterInputProtocol) -> UIViewController {
        let presenter = CountryPresenter()
        let view = CountryViewController()
        
        var interactor = makeInterator()
        view.presenter = presenter
        presenter.view = view
        interactor.presenter = presenter
        presenter.interator = interactor
        presenter.router = router
        return view
    }
    
    func makeInterator() -> CountryInteractorInputProtocol {
        let networkService = NetworkService()
        return CountryInterator(networkService: networkService)
    }
}
