//
//  CountryInteractorOutputProtocol.swift
//  Viper
//
//  Created by Алена Панченко on 13.02.2023.
//

import Foundation

/// Протокол выхода интератора
protocol CountryInteractorOutputProtocol: AnyObject {
    func fetchCountries(countries: [Country])
}
