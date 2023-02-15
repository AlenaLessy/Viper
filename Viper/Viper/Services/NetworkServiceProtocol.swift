//
//  NetworkServiceProtocol.swift
//  Viper
//
//  Created by Алена Панченко on 15.02.2023.
//

import Foundation

/// Протокол сетевого сервиса
protocol NetworkServiceProtocol {
    func fetchCountries(completion: ((Result<[Country], Error>) -> ())?)
    func fetchHotels(index: Int, completion: ((Result<Hotels, Error>) -> ())?)
}
