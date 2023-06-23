//
//  ProfileViewController.swift
//  imageFlow
//
//  Created by Александр Медведев on 12.06.2023.
//

import Foundation
import UIKit

final class ProfileViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addPersonalPhotoView()
        addExitButton()
        addNameFamilyNameLabel()
        addTaggedUserName()
        addUserMessage()
    }
    
    private func addPersonalPhotoView() -> UIImageView {
        let personalPhotoView = UIImageView(image: UIImage(named: "MockPersonalPhoto"))
        personalPhotoView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(personalPhotoView)
        NSLayoutConstraint.activate([
            personalPhotoView.heightAnchor.constraint(equalToConstant: 70),
            personalPhotoView.widthAnchor.constraint(equalToConstant: 70),
            personalPhotoView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            personalPhotoView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16)
        ])
        return personalPhotoView
    }
    
    private func addExitButton() -> UIButton {
        let exitButton = UIButton.systemButton(
            with: UIImage(named: "ipad.and.arrow.forward")!,
            target: self,
            action: #selector(self.didTapExitButton)
        )
        exitButton.tintColor = .ypRed
        exitButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(exitButton)
        NSLayoutConstraint.activate([
            exitButton.heightAnchor.constraint(equalToConstant: 44),
            exitButton.widthAnchor.constraint(equalToConstant: 44),
            exitButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 45),
            exitButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16)
        ])
        return exitButton
    }
    
    @objc private func didTapExitButton() {}
    
    private func addNameFamilyNameLabel() -> UILabel {
        let nameFamilyNameLabel = UILabel()
        nameFamilyNameLabel.text = "Екатерина Новикова"
        nameFamilyNameLabel.font = UIFont.boldSystemFont(ofSize: 23)
        nameFamilyNameLabel.textColor = .ypWhite
        nameFamilyNameLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nameFamilyNameLabel)
        NSLayoutConstraint.activate([
            nameFamilyNameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 102),
            nameFamilyNameLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16)
        ])
        return nameFamilyNameLabel
    }
    
    private func addTaggedUserName() -> UILabel {
        let taggedUserName = UILabel()
        taggedUserName.text = "@ekaterina_nov"
        taggedUserName.font = UIFont.systemFont(ofSize: 13)
        taggedUserName.textColor = .ypWhite
        taggedUserName.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(taggedUserName)
        NSLayoutConstraint.activate([
            taggedUserName.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 136),
            taggedUserName.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16)            
        ])
        return taggedUserName
    }
    
    private func addUserMessage() -> UILabel {
        let userMessage = UILabel()
        userMessage.textColor = .ypWhite
        userMessage.font = UIFont.systemFont(ofSize: 13)
        userMessage.text = "Hello, world!"
        
        userMessage.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(userMessage)
        NSLayoutConstraint.activate([
            userMessage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 162),
            userMessage.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16)
        ])
        return userMessage
    }
}
