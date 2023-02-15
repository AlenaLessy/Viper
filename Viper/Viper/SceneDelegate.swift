//
//  SceneDelegate.swift
//  Viper
//
//  Created by Алена Панченко on 14.02.2023.
//

import UIKit

/// Сцена
class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    // MARK: - Public Properties
    
    let navigationController = UINavigationController()
    let assembly = CountryAssembly()
    
    var window: UIWindow?
    
    // MARK: - Public Methods
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        let router = CountryRouter(assembly: assembly, navigationController: navigationController)
        router.initialViewController()
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        self.window = window
    }
}

