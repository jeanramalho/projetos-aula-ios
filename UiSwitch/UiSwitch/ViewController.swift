//
//  ViewController.swift
//  UiSwitch
//
//  Created by Jean Ramalho on 26/09/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var stateSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stateSwitch.isOn = false
        stateSwitch.onTintColor = .blue
    }
    
    
    @IBAction func tappadeSwitchAction(_ sender: UISwitch) {
        print(sender.isOn)
        if stateSwitch.isOn {
            view.backgroundColor = .red
        } else {
            view.backgroundColor = .black
        }
    }
    

}

