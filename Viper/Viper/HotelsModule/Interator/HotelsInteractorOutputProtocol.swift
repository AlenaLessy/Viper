//
//  HotelsInteractorOutputProtocol.swift
//  Viper
//
//  Created by Алена Панченко on 13.02.2023.
//

import Foundation

/// Протокол выхода интератора экрана отелей
protocol HotelsInteractorOutputProtocol: AnyObject {
    func fetchHotels(hotels: Hotels)
}
