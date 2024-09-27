//
//  ViewController.swift
//  NavigationAvancado
//
//  Created by Jean Ramalho on 27/09/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goToScreen02(_ sender: UIButton) {
        let VC: tela02VC? = UIStoryboard(name: "tela02VC", bundle: nil).instantiateViewController(withIdentifier: "tela02VC") as? tela02VC
        
        //abordagem pra chamar modal
        
//        VC?.modalPresentationStyle = .fullScreen
//        self.present(VC ?? UIViewController(), animated: true)
        
        //Abordagem pra chamar uma navigation Controller
        
        self.navigationController?.pushViewController(VC ?? UIViewController(), animated: true)
    }
    }
    
    

