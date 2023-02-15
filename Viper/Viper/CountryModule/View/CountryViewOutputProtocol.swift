//
//  CountryViewOutputProtocol.swift
//  Viper
//
//  Created by Алена Панченко on 13.02.2023.
//

import Foundation

/// Протокол выхода экрана стран
protocol CountryViewOutputProtocol {
    func fetchCountries()
    func didSelectRowAt(index: Int)
}
