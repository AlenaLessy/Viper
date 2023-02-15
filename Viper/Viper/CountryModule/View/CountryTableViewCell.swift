// CountryTableViewCell.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Ячейка страны
final class CountryTableViewCell: UITableViewCell {
 
    // MARK: - Private Visual Components

    private var countryImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.layer.cornerRadius = 20
        image.layer.masksToBounds = true
        return image
    }()

    private var countryNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .purple
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    private var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()

    // MARK: - Initializers

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        addSubviews()
        configureLayoutAnchor()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Public Methods

    func configure(country: Country) {
        countryNameLabel.text = country.name
        countryImageView.image = UIImage(asset: country.imageName)
        descriptionLabel.text = country.description
    }
    

    // MARK: - Private Methods

    private func addSubviews() {
        addSubview(countryImageView)
        addSubview(countryNameLabel)
        addSubview(descriptionLabel)
        backgroundColor = UIColor(asset: Images.someColor)
    }

    private func configureLayoutAnchor() {
        countryImageViewConstraint()
        countryNameLabelConstraint()
        countryDescriptionLabelConstraint()
    }

    private func countryNameLabelConstraint() {
        NSLayoutConstraint.activate([
            countryNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            countryNameLabel.leadingAnchor.constraint(
                equalTo: centerXAnchor,
                constant: -30
            ),
        ])
    }

    private func countryImageViewConstraint() {
        NSLayoutConstraint.activate([
            countryImageView.topAnchor.constraint(equalTo: countryNameLabel.bottomAnchor, constant:  10),
            countryImageView.leadingAnchor.constraint(
                equalTo: leadingAnchor,
                constant: 10
            ),
            countryImageView.heightAnchor.constraint(equalToConstant: 200),
            countryImageView.widthAnchor.constraint(equalToConstant: 200),
            countryImageView.bottomAnchor.constraint(
                equalTo: bottomAnchor,
                constant: -15
            )
        ])
    }
    
    private func countryDescriptionLabelConstraint() {
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: countryImageView.centerYAnchor, constant: -30),
            descriptionLabel.leadingAnchor.constraint(
                equalTo: countryImageView.trailingAnchor,
                constant: 10
            ),
            descriptionLabel.widthAnchor.constraint(equalToConstant: 150)
            
        ])
    }
    
}
