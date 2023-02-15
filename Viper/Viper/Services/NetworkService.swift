//
//  NetworkService.swift
//  Viper
//
//  Created by Алена Панченко on 15.02.2023.
//

import Foundation

/// Мок Сетевого сервиса
final class NetworkService: NetworkServiceProtocol {
    
    // MARK: - Private Properties
    
    private let countries: [Country] = [
        Country(name: Constants.countryOneName, imageName: Images._1, description: Constants.countryOneDescription),
        Country(name: Constants.countryTwoName, imageName: Images._2, description: Constants.countryTwoDescription),
        Country(name: Constants.countryThreeName, imageName: Images._3, description: Constants.countryThreeDescription),
        Country(name: Constants.countryFourName, imageName: Images._4, description: Constants.countryFourDescription),
        Country(name: Constants.countryFiveName, imageName: Images._5, description: Constants.countryFiveDescription),
    ]
    
    private let hotels = [Hotels(names: [Constants.onehotelsNameOne, Constants.onehotelsNameTwo, Constants.onehotelsNameThree], imageNames: [Images._11, Images._12, Images._13]),
                          Hotels(names: [Constants.twohotelsNameOne, Constants.twohotelsNameTwo, Constants.twoHotelsNameThree], imageNames: [Images._21, Images._22, Images._23]),
                          Hotels(names: [Constants.threehotelsNameOne, Constants.threehotelsNameTwo, Constants.threehotelsNameThree], imageNames: [Images._31, Images._32, Images._33]),
                          Hotels(names: [Constants.fourhotelsNameOne, Constants.fourhotelsNameTwo, Constants.fourhotelsNameThree], imageNames: [Images._41, Images._42, Images._43]),
                          Hotels(names: [Constants.fivehotelsNameOne, Constants.fivehotelsNameTwo, Constants.fivehotelsNameThree], imageNames: [Images._51, Images._52, Images._53])]
    
   // MARK: - Public Methods
    
    func fetchCountries(completion: ((Result<[Country], Error>) -> ())?) {
        completion?(.success(countries))
    }
    
    func fetchHotels(index: Int, completion: ((Result<Hotels, Error>) -> ())?) {
        completion?(.success(hotels[index]))
    }
}
