//
//  ViewController.swift
//  novoStoryBoardApp
//
//  Created by Jean Ramalho on 25/09/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginLabel: UILabel!
    
    @IBOutlet weak var nomeTextField: UITextField!
    
    @IBOutlet weak var senhaTextField: UITextField!
    
    @IBOutlet weak var enviarButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    
    @IBAction func tappedLoginButton(_ sender: UIButton) {
        
        view.backgroundColor = .green
    }
    
}

