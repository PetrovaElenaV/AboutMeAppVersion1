//
//  ViewController.swift
//  AboutMeAppVersion1
//
//  Created by Elena Petrova on 06.09.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var nameButton: UIButton!
    @IBOutlet var passwordButton: UIButton!
    
    // MARK: - Private Properties
    private let checkUsers = ["User": "123"]
    
    // MARK: - Override Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let nameUser = segue.destination as? WelcomeViewController else { return }
        nameUser.nameText = nameTextField.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - IB Actions
    @IBAction func forgotUserNameButton() {
        showAlert(withTitle: "Oops!⛔️", andMassage: "Your name is ✓ User")
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(withTitle: "Oops! 📛 ", andMassage: " Your password is ✓ 123")
    }
    
    @IBAction func logOutButton(for segue: UIStoryboardSegue) {
        nameTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func userCheckButton() {
        for (username, password)  in checkUsers {
            if username != nameTextField.text || password != passwordTextField.text {
                showAlert(withTitle: "🥹 Invalid login or password", andMassage: "🤝 Please, enter correct login and password")
            }
        }
    }
}

// MARK: - UIAlertControllers
extension LoginViewController {
    private func showAlert(withTitle title: String, andMassage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "✅ OK", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

