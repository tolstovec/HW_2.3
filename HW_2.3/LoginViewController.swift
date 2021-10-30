//
//  LoginViewController.swift
//  HW_2.3
//
//  Created by Ilya Pokhodin on 28.10.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var logInButtonOutlet: UIButton!
    
    private let userName = "tolstovec"
    private let password = "tolstovec1"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcomeLableValue = userName
        }
    
    // MARK: @IBAction
    @IBAction func fogotButtonTouch(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Забыли логин?", messege: "Ваш логин \(userName)")
        : showAlert(title: "Забыли пароль?", messege: "Ваш пароль \(password)")
    }
    
    @IBAction func logInPressed() {
        if userNameTextField.text != userName
            || passwordTextField.text != password {
            showAlert(
                title: "Логин или пароль неверны",
                messege: "Укажите корректные логин и пароль"
            )
            passwordTextField.text = ""
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    
}

extension LoginViewController {
    private func showAlert(title: String, messege: String) {
        let alertLogIn = UIAlertController(title: title, message: messege, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alertLogIn.addAction(okAction)
        present(alertLogIn, animated: true)
    }
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            logInPressed()
            performSegue(withIdentifier: "showMeWelcomeVC", sender: nil)
        }
        return true
    }
}
