//
//  ViewController.swift
//  NavigationAvancado
//
//  Created by Jean Ramalho on 27/09/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nomeTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goToScreen02(_ sender: UIButton) {

        
        
        // MARK: Método simples de navegação e passagem de dados entre telas
        
//        let VC: tela02VC? = UIStoryboard(name: "tela02VC", bundle: nil).instantiateViewController(withIdentifier: "tela02VC") as? tela02VC
        
        //abordagem pra chamar modal
        
//        VC?.modalPresentationStyle = .fullScreen
//        self.present(VC ?? UIViewController(), animated: true)
        
        //Abordagem pra chamar uma navigation Controller
        
//        self.navigationController?.pushViewController(VC ?? UIViewController(), animated: true)
//        
//        VC?.name = self.nomeTextField.text
        
        
        // MARK: Transintando dados entre telas de maneira correta
        
        let VC: tela02VC? = UIStoryboard(name: "tela02VC", bundle: nil).instantiateViewController(identifier: "tela02VC") { coder in return tela02VC(coder: coder, name: self.nomeTextField.text ?? "")
            
        }
          
        self.navigationController?.pushViewController(VC ?? UIViewController(), animated: true)
 
        
    }
    }
    
    


