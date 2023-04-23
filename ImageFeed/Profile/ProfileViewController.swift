//
//  ProfileViewController.swift
//  ImageFeed
//
//  Created by Артур Коробейников on 12.04.2023.
//

import UIKit

final class ProfileViewController: UIViewController {
    
    private var avatarImageView: UIImageView!
    private var nameLabel: UILabel!
    private var loginNameLabel: UILabel!
    private var descriptionLabel: UILabel!
    private var logoutButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        avatarImageViewCall()
        nameLabelCall()
        loginNameLabelCall()
        descriptionLabelCall()
        logoutButtonCall()
    }
    
    private func avatarImageViewCall() {
        let avatarImageView = UIImageView(image: UIImage(named: "avatar"))
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(avatarImageView)
        
        avatarImageView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        avatarImageView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        avatarImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 76).isActive = true
        avatarImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        
        self.avatarImageView = avatarImageView
    }
    
    private func nameLabelCall() {
        let nameLabel = UILabel()
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        nameLabel.font = UIFont.systemFont(ofSize: 23, weight: .bold)
        nameLabel.text = "Екатерина Новикова"
        view.addSubview(nameLabel)
        
        nameLabel.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 8).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: avatarImageView.leadingAnchor).isActive = true
        self.nameLabel = nameLabel
    }
    
    private func loginNameLabelCall() {
        let loginNameLabel = UILabel()
        loginNameLabel.translatesAutoresizingMaskIntoConstraints = false
        loginNameLabel.textColor = UIColor(red: 0.682, green: 0.686, blue: 0.706, alpha: 1)
        loginNameLabel.font = UIFont(name: "SFPro-Regular", size: 13)
        loginNameLabel.text = "@ekaterina_nov"
        view.addSubview(loginNameLabel)
        
        loginNameLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8).isActive = true
        loginNameLabel.leadingAnchor.constraint(equalTo: avatarImageView.leadingAnchor).isActive = true
        self.loginNameLabel = loginNameLabel
    }
    
    private func descriptionLabelCall() {
        let descriptionLabel = UILabel()
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        descriptionLabel.font = UIFont(name: "SFPro-Regular", size: 13)
        descriptionLabel.text = "Hello, world!"
        view.addSubview(descriptionLabel)
        
        descriptionLabel.topAnchor.constraint(equalTo: loginNameLabel.bottomAnchor, constant: 8).isActive = true
        descriptionLabel.leadingAnchor.constraint(equalTo: avatarImageView.leadingAnchor).isActive = true
        self.descriptionLabel = descriptionLabel
    }
    
    private func logoutButtonCall() {
        let logoutButton = UIButton.systemButton(with: UIImage(systemName: "ipad.and.arrow.forward")!, target: self, action: #selector(Self.didTapLogoutButton))
        logoutButton.translatesAutoresizingMaskIntoConstraints = false
        logoutButton.tintColor = UIColor(red: 0.961, green: 0.42, blue: 0.424, alpha: 1)
        view.addSubview(logoutButton)
        
        logoutButton.heightAnchor.constraint(equalToConstant: 22).isActive = true
        logoutButton.widthAnchor.constraint(equalToConstant: 20).isActive = true
        logoutButton.centerYAnchor.constraint(equalTo: avatarImageView.centerYAnchor).isActive = true
        logoutButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -26).isActive = true
        self.logoutButton = logoutButton
    }
    
    @objc
    private func didTapLogoutButton() {
    }
}
