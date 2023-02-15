//
//  HotelsViewController.swift
//  Viper
//
//  Created by Алена Панченко on 14.02.2023.
//

import UIKit

/// Экран отелей
class HotelsViewController: UIViewController, HotelsViewInputProtocol {
  
    // MARK: - Private Visual Components
    
    private var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = UIColor(asset: Images.someColor)
        return tableView
    }()
    
    // MARK: - Public Properties
    
    var presenter: HotelsPresenterProtocol?
    
    // MARK: - LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }

    // MARK: - Public Methods
    
    func updateCountries() {
        tableView.reloadData()
    }
    
    // MARK: - Private Methods

    private func configureTableView() {
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(
            HotelsTableViewCell.self,
            forCellReuseIdentifier: Constants.hotelsTableViewCellIdentifier
        )
        presenter?.updateHotels()
        view.backgroundColor = UIColor(asset: Images.someColor)
        tableViewConstraint()
    }
    
    private func tableViewConstraint() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}

/// UITableViewDataSource
extension HotelsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        presenter?.hotels?.names.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Constants.hotelsTableViewCellIdentifier)
            as? HotelsTableViewCell
        else { return UITableViewCell() }
        guard let hotelName = presenter?.hotels?.names[indexPath.row],
              let hotelImage = presenter?.hotels?.imageNames[indexPath.row]
        else { return UITableViewCell()}
        cell.configure(hotelsName: hotelName, hotelsImage: hotelImage)
        return cell
    }
}

/// UITableViewDelegate
extension HotelsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //
    }
}
