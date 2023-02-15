// HotelsTableViewCell.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Ячейка экрана отелей
final class HotelsTableViewCell: UITableViewCell {
 
    // MARK: - Private Visual Components

    private var hotelsImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.layer.cornerRadius = 20
        image.layer.masksToBounds = true
        return image
    }()

    private var hotelsNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 17)
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

    func configure(hotelsName: String, hotelsImage: ImageAsset) {
        hotelsNameLabel.text = hotelsName
        hotelsImageView.image = UIImage(asset: hotelsImage)
        backgroundColor = UIColor(asset: Images.someColor)
        
    }

    // MARK: - Private Methods

    private func addSubviews() {
        addSubview(hotelsImageView)
        addSubview(hotelsNameLabel)
    }

    private func configureLayoutAnchor() {
        hotelsImageViewConstraint()
        hotelsNameLabelConstraint()
    }

    private func hotelsNameLabelConstraint() {
        NSLayoutConstraint.activate([
            hotelsNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 45),
            hotelsNameLabel.leadingAnchor.constraint(
                equalTo: hotelsImageView.trailingAnchor,
                constant: 15
            ),
            hotelsNameLabel.trailingAnchor.constraint(
                equalTo: trailingAnchor,
                constant: -15
            ),
            hotelsNameLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -45)

        ])
    }

    private func hotelsImageViewConstraint() {
        NSLayoutConstraint.activate([
            hotelsImageView.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            hotelsImageView.leadingAnchor.constraint(
                equalTo: leadingAnchor,
                constant: 15
            ),
            hotelsImageView.heightAnchor.constraint(equalToConstant: 200),
            hotelsImageView.widthAnchor.constraint(equalToConstant: 200),
            hotelsImageView.bottomAnchor.constraint(
                equalTo: bottomAnchor,
                constant: -5
            )
        ])
    }
}
