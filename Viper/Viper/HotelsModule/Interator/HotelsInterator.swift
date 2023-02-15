//
//  HotelsInterator.swift
//  Viper
//
//  Created by Алена Панченко on 13.02.2023.
//

import Foundation

/// Итератор экрана отелей
final class HotelsInteractor: HotelsInteractorInputProtocol {
   
    // MARK: - Public Properties
    
    weak var presenter: HotelsInteractorOutputProtocol?
    var networkService: NetworkServiceProtocol?
    
    // MARK: - Initializers
    
    init(networkService: NetworkServiceProtocol) {
        self.networkService = networkService
    }
    
    // MARK: - Public Methods
    
    func fetchHotels(index: Int) {
        networkService?.fetchHotels(index: index, completion: { [weak self] result in
            switch result {
            case let .success(result):
                self?.presenter?.fetchHotels(hotels: result)
            case let .failure(error):
                print(error.localizedDescription)
            }
        })
    }
}
