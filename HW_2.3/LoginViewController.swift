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
    
    private let userName = "tolstovec"
    private let password = "tolstovec1"
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func fogotUserNameTouchButton() {
        showAlert(title: "Забыли логин?", messege: "Ваш логин \(userName)")
    }
    
    @IBAction func fogotPasswordTouchButton() {
        showAlert(title: "Забыли пароль?", messege: "Ваш пароль \(password)")
    }
        
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if touches.first != nil {
            view.endEditing(true)
        }
        super.touchesBegan(touches, with: event)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if userNameTextField.text == userName
            && passwordTextField.text == password {
            
            guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
            welcomeVC.welcomeLableValue = "Welcome, " + userName
        } else {
             showAlert(title: "Логин или пароль неверны", messege: "Укажите корректные логин и пароль")
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
