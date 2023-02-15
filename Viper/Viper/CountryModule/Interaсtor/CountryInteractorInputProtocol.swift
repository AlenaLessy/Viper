//
//  CountryInteractorInputProtocol.swift
//  Viper
//
//  Created by Алена Панченко on 15.02.2023.
//

import Foundation

/// Протокол входа интератора
protocol CountryInteractorInputProtocol {
    var presenter: CountryInteractorOutputProtocol? { get set }
    
    func fetchCountries()
}
