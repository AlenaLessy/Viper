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
    var interator: CountryInteractorInputProtocol? {
        didSet {
            interator?.fetchCountries()
        }
    }
    var router: CountryRouterInputProtocol?
    var countries: [Country]?
    
    // MARK: - Public Methods
    
    func fetchCountries(countries: [Country]) {
        self.countries = countries
    }
    
    func fetchCountries() {
        interator?.fetchCountries()
    }
    
    func didSelectRowAt(index: Int) {
        router?.goToHotel(index: index)
    }
}
