//
//  UltimaTelaViewController.swift
//  NavigationController
//
//  Created by Jean Ramalho on 27/09/24.
//

import UIKit

class UltimaTelaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func goBackToBegin(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
