//
//  CountryPresenterProtocol.swift
//  Viper
//
//  Created by Алена Панченко on 13.02.2023.
//

import Foundation

/// Протокол презентера экрана стран
protocol CountryPresenterProtocol: CountryViewOutputProtocol, CountryInteractorOutputProtocol {
    var view: CountryViewInputProtocol? { get }
    var interactor: CountryInteractorInputProtocol? { get }
    var router: CountryRouterInputProtocol? { get }
    var countries: [Country]? { get }
}
