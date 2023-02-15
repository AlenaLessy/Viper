//
//  HotelsAssemblyProtocol.swift
//  Viper
//
//  Created by Алена Панченко on 14.02.2023.
//

import UIKit

/// Протокол сборщика модулей экрана отелей
protocol HotelsAssemblyProtocol {
    func makeHotelsModule(router: HotelsRouterInputProtocol, index: Int) -> UIViewController 
}
