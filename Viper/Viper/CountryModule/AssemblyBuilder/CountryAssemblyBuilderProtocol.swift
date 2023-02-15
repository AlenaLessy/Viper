//
//  CountryAssemblyBuilderProtocol.swift
//  Viper
//
//  Created by Алена Панченко on 14.02.2023.
//

import UIKit

/// Протокол сборщика модулей экрана страны
protocol CountryAssemblyBuilderProtocol {
    func makeCountryModule(router: CountryRouterInputProtocol) -> UIViewController
}
