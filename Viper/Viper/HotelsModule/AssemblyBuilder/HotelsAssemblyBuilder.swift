//
//  HotelsAssemblyBuilder.swift
//  Viper
//
//  Created by Алена Панченко on 14.02.2023.
//

import UIKit

/// Сборщик модулей экрана отелей
final class HotelsAssemblyBuilder: HotelsAssemblyBuilderProtocol {
    
    // MARK: - Public Methods
    
    func makeHotelsModule(router: HotelsRouterInputProtocol, index: Int) -> UIViewController {
        let presenter = HotelsPresenter()
        let view = HotelsViewController()
        presenter.view = view
        presenter.index = index
        var interactor = makeInterator()
        view.presenter = presenter
        interactor.presenter = presenter
        presenter.iterator = interactor
        presenter.router = router
        return view
    }
    
    func makeInterator() -> HotelsInteractorInputProtocol {
        let networkService = NetworkService()
        return HotelsInterator(networkService: networkService)
    }
}
