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
    private var userName = Users.client
    private let passwordName = Users.client
    private let person = Person.getPerson
    
    // MARK: - Override Methods
    
    override func viewDidLoad() {
        userNameTextField.text = userName.user
        passwordTextField.text = passwordName.password
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = welcomeVC.viewControllers else { return }
        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = userName.user
            } else if let navController = viewController as? UINavigationController {
                guard let infoVC = navController.topViewController as? InfoViewController else { return }
                infoVC.person = person
            } else if let favouritesVC = viewController as? FavouritesViewController {
                favouritesVC.nameDogs = person
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - IB Actions
    @IBAction func logInPressed() {
        guard userNameTextField.text == userName.user, passwordTextField.text == passwordName.password else {
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
        ? showAlert(title: "Oops!⛔️", message: "Your name is ✓ \(userName.user)")
        : showAlert(title: "Oops! 📛 ", message: " Your password is ✓ \(passwordName.password)")
    }
    
    @IBAction func unwindSegue(for segue: UIStoryboardSegue) {
        userNameTextField.text = userName.user
        passwordTextField.text = passwordName.password
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
