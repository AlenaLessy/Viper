//
//  CountryIntecrator.swift
//  Viper
//
//  Created by Алена Панченко on 13.02.2023.
//

import Foundation

/// Итератор экрана стран
final class CountryInteractor: CountryInteractorInputProtocol {
    
    // MARK: - Public Properties
    
    weak var presenter: CountryInteractorOutputProtocol?
    var networkService: NetworkServiceProtocol?
    
    // MARK: - Initializers
    
    init(networkService: NetworkServiceProtocol) {
        self.networkService = networkService
    }
    
    // MARK: - Public Methods
    
    func fetchCountries() {
        networkService?.fetchCountries(completion: { [weak self] result in
            switch result {
            case let .success(result):
                self?.presenter?.fetchCountries(countries: result)
            case let .failure(error):
                print(error.localizedDescription)
            }
        })
    }
}
