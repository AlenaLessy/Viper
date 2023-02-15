//
//  HotelsPresenterProtocol.swift
//  Viper
//
//  Created by Алена Панченко on 13.02.2023.
//

import Foundation

/// Протокол презентера экрана отелей
protocol HotelsPresenterProtocol: HotelsViewOutputProtocol, HotelsInteractorOutputProtocol {
    var view: HotelsViewInputProtocol? { get }
    var interactor: HotelsInteractorInputProtocol? { get }
    var router: HotelsRouterInputProtocol? { get }
    var hotels: Hotels? { get }
    var index: Int? { get }
    
    func fetchHotels(hotels: Hotels)
}
