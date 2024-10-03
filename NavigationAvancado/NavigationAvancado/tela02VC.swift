//
//  tela02VC.swift
//  NavigationAvancado
//
//  Created by Jean Ramalho on 27/09/24.
//

import UIKit

class tela02VC: UIViewController {

    
    @IBOutlet weak var nomeLabel: UILabel!
    
    // MARK: Método simples de navegação e passagem de dados entre telas
//    var name: String?
    
    let name: String
    
    init?(coder:NSCoder, name: String) {
        self.name = name
        super.init(coder: coder)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implanted.")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .green
        
        nomeLabel.text = name
    }
    


}
