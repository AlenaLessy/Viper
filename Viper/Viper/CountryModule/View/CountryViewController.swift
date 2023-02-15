//
//  CountryViewController.swift
//  Viper
//
//  Created by Алена Панченко on 14.02.2023.
//

import UIKit

/// Экран стран
class CountryViewController: UIViewController, CountryViewInputProtocol {
  
    // MARK: - Private Visual Components
    
    private var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    // MARK: - Public Properties
    
    var presenter: CountryPresenterProtocol?
    
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
            CountryTableViewCell.self,
            forCellReuseIdentifier: Constants.countryTableViewCellIdentifier
        )
        presenter?.fetchCountries()
        tableView.backgroundColor = UIColor(asset: Images.someColor)
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
extension CountryViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        presenter?.countries?.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Constants.countryTableViewCellIdentifier)
            as? CountryTableViewCell
        else { return UITableViewCell() }
        guard let country = presenter?.countries?[indexPath.row] else { return UITableViewCell()}
        cell.configure(country: country)
        return cell
    }
}

/// UITableViewDelegate
extension CountryViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.didSelectRowAt(index: indexPath.row)
    }
}
