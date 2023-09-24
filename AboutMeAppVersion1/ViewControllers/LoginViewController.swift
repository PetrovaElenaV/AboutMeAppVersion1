//
//  ViewController.swift
//  AboutMeAppVersion1
//
//  Created by Elena Petrova on 06.09.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    // MARK: - Private Properties
    private let user = "User"
    private let password = "123"
    
    // MARK: - Override Methods
    
    override func viewDidLoad() {
        userNameTextField.text = user
        passwordTextField.text = password
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.user = user
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - IB Actions
    @IBAction func logInPressed() {
        guard userNameTextField.text == user, passwordTextField.text == password else {
            showAlert(
                title: "🥹 Invalid login or password",
                message: "🤝 Please, enter correct login and password",
                textField: passwordTextField
            )
            return
        }
        performSegue(withIdentifier: "openWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!⛔️", message: "Your name is ✓ \(user)")
        : showAlert(title: "Oops! 📛 ", message: " Your password is ✓ \(password)")
    }
    
    @IBAction func unwindSegue(for segue: UIStoryboardSegue) {
        userNameTextField.text = user
        passwordTextField.text = password
    }
    
    // MARK: - UIAlertControllers
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "✅ OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
