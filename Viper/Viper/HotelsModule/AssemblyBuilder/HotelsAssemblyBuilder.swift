//
//  HotelsAssembly.swift
//  Viper
//
//  Created by Алена Панченко on 14.02.2023.
//

import UIKit

/// Сборщик модулей экрана отелей
final class HotelsAssembly: HotelsAssemblyProtocol {
    
    // MARK: - Public Methods
    
    func makeHotelsModule(router: HotelsRouterInputProtocol, index: Int) -> UIViewController {
        let presenter = HotelsPresenter()
        let view = HotelsViewController()
        presenter.view = view
        presenter.index = index
        var interactor = makeInteractor()
        view.presenter = presenter
        interactor.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
        return view
    }
    
    func makeInteractor() -> HotelsInteractorInputProtocol {
        let networkService = NetworkService()
        return HotelsInteractor(networkService: networkService)
    }
}
