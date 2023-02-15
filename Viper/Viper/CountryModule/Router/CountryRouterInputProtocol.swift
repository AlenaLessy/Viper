//
//  CountryRouterInputProtocol.swift
//  Viper
//
//  Created by Алена Панченко on 14.02.2023.
//

import Foundation

/// Протокол роутера экрана страны
protocol CountryRouterInputProtocol {
    var assemblyBuilder: CountryAssemblyBuilderProtocol? { get }
    
    func goToHotel(index: Int)
}
