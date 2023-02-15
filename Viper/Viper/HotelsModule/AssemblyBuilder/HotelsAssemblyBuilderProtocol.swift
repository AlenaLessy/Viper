//
//  HotelsAssemblyBuilderProtocol.swift
//  Viper
//
//  Created by Алена Панченко on 14.02.2023.
//

import UIKit

/// Протокол сборщика модулей экрана отелей
protocol HotelsAssemblyBuilderProtocol {
    func makeHotelsModule(router: HotelsRouterInputProtocol, index: Int) -> UIViewController 
}
