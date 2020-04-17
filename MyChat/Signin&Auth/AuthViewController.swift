//
//  ViewController.swift
//  MyChat
//
//  Created by Роман Лабунский on 15/03/2020.
//  Copyright © 2020 Роман Лабунский. All rights reserved.
//

import UIKit

class AuthViewController: UIViewController {
    
    // Create a logo of a app
    let logoImageView = UIImageView(image: #imageLiteral(resourceName: "Logo"), contentMode: .scaleAspectFit)
    
    // Create a labels
    let googleLabel = UILabel(text: "Get started with")
    let emailLabel = UILabel(text: "Or sign up with")
    let alreadyOnboardLabel = UILabel(text: "Alerady onboard?")

    // Create a buttons
    let googleButton = UIButton(title: "Google", titleColor: .black, backgroundColor: .white, isShadow: true)
    let emailButton = UIButton(title: "Email", titleColor: .white, backgroundColor: .buttonDark())
    let loginButton = UIButton(title: "Login", titleColor: .buttonRed(), backgroundColor: .white, isShadow: true)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        googleButton.costomizeGoogleButtom()
        
        view.backgroundColor = .white
        setupConstraints()
    }

   
}


// MARK: - Setup constraints
extension AuthViewController {
    private func setupConstraints() {
           let googleView = ButtonFormView(label: googleLabel, button: googleButton)
           let emailView = ButtonFormView(label: emailLabel, button: emailButton)
           let loginView = ButtonFormView(label: alreadyOnboardLabel, button: loginButton)

           let stackView = UIStackView(arrangedSubviews: [googleView, emailView, loginView], axis: .vertical, spacing: 40)
           logoImageView.translatesAutoresizingMaskIntoConstraints = false
           stackView.translatesAutoresizingMaskIntoConstraints = false
           
           // Show on screen
           view.addSubview(logoImageView)
           view.addSubview(stackView)
           
           NSLayoutConstraint.activate([
               logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 160),
           logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
               ])
           
           NSLayoutConstraint.activate([
               stackView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 160),
               stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
               stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
           ])
       }
}

// MARK: - SwiftUI
import SwiftUI

// Create for show a Canvas
struct AuthVCProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    struct ContainerView: UIViewControllerRepresentable {
        
        let viewController = AuthViewController()
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<AuthVCProvider.ContainerView>) -> AuthViewController {
            return viewController
        }
        func updateUIViewController(_ uiViewController: AuthVCProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<AuthVCProvider.ContainerView>) {
             
        }
    }
    
}
