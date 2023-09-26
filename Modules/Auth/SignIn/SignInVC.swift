//
//  SignInVC.swift
//  Key
//
//  Created by Kenan Sezginbaş on 26.09.2023.
//

import UIKit

final class SignInVC: UIViewController {
    
    let emailTextField      = KeyTextField(placeHolder: "Email", keyboardType: .emailAddress)
    let passwordTextField   = KeyTextField(placeHolder: "Password", isSecure: true)
    let signInButton        = KeyButton(buttonText: "Giris")
    
    var email: String? {
        return emailTextField.text
    }
    var password: String? {
        return passwordTextField.text
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    private final func configureUI() {
        view.backgroundColor = .systemBackground
        configureInputs()
        configureButtons()
    }
    
    private final func configureInputs() {
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        
        NSLayoutConstraint.activate([
            emailTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            emailTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            emailTextField.heightAnchor.constraint(equalToConstant: 50),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 10),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50),
         ])
        
    }
    
    private final func configureButtons() {
        view.addSubview(signInButton)
        signInButton.addTarget(self, action: #selector(signInButtonTapped), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            signInButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 10),
            signInButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            signInButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            signInButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
    @objc final func signInButtonTapped() {
        print("jsdkhf")
        guard let email = email, let password = password else {
            assertionFailure("Not be nil")
            return
        }
        if email.isEmpty || password.isEmpty {
            showAlert(title: "Hata", message: "Bos Alanlari Doldurunuz")
        } else if email != user.email || password != user.password {
            showAlert(title: "Hata", message: "Kullanici Bilgileriniz Yanlis")
        } else {
            print("Success")
        }
    }
    
}


