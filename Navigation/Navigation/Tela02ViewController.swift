//
//  Tela02ViewController.swift
//  Navigation
//
//  Created by Jean Ramalho on 27/09/24.
//

import UIKit

class Tela02ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red
    }
    

    @IBAction func goBackTela01(_ sender: UIButton) {
        
        self.dismiss(animated: true)
        
    }
}
