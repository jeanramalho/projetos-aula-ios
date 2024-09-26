//
//  ViewController.swift
//  UIImageView
//
//  Created by Jean Ramalho on 26/09/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var logoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        logoImageView.image = UIImage(named: "logo")
        logoImageView.contentMode = .scaleAspectFit
        
        //para usar imagem do sistema
//        logoImageView.image = UIImage(systemName: "nome do proprio sistema encontrado na barra lateral")
        // quando a imagem é do sistema ou svg, é possivel fazer alteração de cor utilizando
        
//        logoImageView.tintColor = .red
    }


}

