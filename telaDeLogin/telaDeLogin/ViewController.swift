//
//  ViewController.swift
//  telaDeLogin
//
//  Created by Jean Ramalho on 25/09/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var cadastrarButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.keyboardType = .default
        emailTextField.keyboardType = .emailAddress
        passwordTextField.keyboardType = .default
        passwordTextField.isSecureTextEntry = true
        
        nameTextField.delegate = self
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        cadastrarButton.isEnabled = false
        cadastrarButton.setTitleColor(.white.withAlphaComponent(0.3), for: .disabled)
    }
    
    
    @IBAction func tappedCadastrarButton(_ sender: UIButton) {
        print("botão está funcionando")
    }
    
    func textFieldValidade(){
        if nameTextField.text != "" && emailTextField.text != "" && passwordTextField.text != "" {
            
            cadastrarButton.isEnabled = true
        }  else {
            
            cadastrarButton.isEnabled = false
        }
    }
    

}

extension ViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderColor = UIColor.blue.cgColor
        textField.layer.borderWidth = 1
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.layer.borderWidth = 0
        textFieldValidade()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

