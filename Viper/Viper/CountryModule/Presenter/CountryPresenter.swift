//
//  CountryPresenter.swift
//  Viper
//
//  Created by Алена Панченко on 13.02.2023.
//

import Foundation

/// Презентер экрана стран
final class CountryPresenter: CountryPresenterProtocol {
    
    // MARK: Public Properties
    
    weak var view: CountryViewInputProtocol?
    var iterator: CountryInteractorInputProtocol? {
        didSet {
            iterator?.fetchCountries()
        }
    }
    var router: CountryRouterInputProtocol?
    var countries: [Country] = []
    
    // MARK: - Public Methods
    
    func fetchCountries(countries: [Country]) {
        self.countries = countries
    }
    
    func updateCountries() {
        iterator?.fetchCountries()
    }
    
    func didSelectRowAt(index: Int) {
        router?.goToHotel(index: index)
    }
}
