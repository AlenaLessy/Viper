//
//  HotelsPresenter.swift
//  Viper
//
//  Created by Алена Панченко on 13.02.2023.
//

import Foundation

/// Презентер экрана отелей
final class HotelsPresenter: HotelsPresenterProtocol {
  
    // MARK: Public Properties
    
    weak var view: HotelsViewInputProtocol?
    var interactor: HotelsInteractorInputProtocol? {
        didSet {
            guard let index else { return }
            interactor?.fetchHotels(index: index)
        }
    }
    var router: HotelsRouterInputProtocol?
    var index: Int?
    var hotels: Hotels?
    
    // MARK: - Public Methods
    
    func fetchHotels(hotels: Hotels) {
        self.hotels = hotels
    }
    
    func updateHotels() {
        guard let index else { return }
        interactor?.fetchHotels(index: index)
    }
    
}
