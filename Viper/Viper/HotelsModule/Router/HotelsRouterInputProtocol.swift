//
//  HotelsRouterInputProtocol.swift
//  Viper
//
//  Created by Алена Панченко on 14.02.2023.
//

import UIKit

/// Протокол роутера экрана отелей
protocol HotelsRouterInputProtocol {
    func pushViewController(index: Int, navigationViewController: UINavigationController)
}
