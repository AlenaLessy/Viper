//
//  HotelsInteractorInputProtocol.swift
//  Viper
//
//  Created by Алена Панченко on 15.02.2023.
//

import Foundation

/// Протокол входа интератора экрана отелей
protocol HotelsInteractorInputProtocol {
    var presenter: HotelsInteractorOutputProtocol? { get set }
    
    func fetchHotels(index: Int)
}
