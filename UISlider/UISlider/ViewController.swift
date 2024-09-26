//
//  ViewController.swift
//  UISlider
//
//  Created by Jean Ramalho on 26/09/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slider.minimumValue = 0
        slider.value = 0
        slider.maximumValue = 20
        
        //muda a cor do que esta completado
        slider.minimumTrackTintColor = .blue
        //muda a cor do que falta completar
        slider.maximumTrackTintColor = .red
        //muda a cor da bolinha que completa
        slider.thumbTintColor = .green
        
        
    }
    

    @IBAction func tappedSlider(_ sender: UISlider) {
        
        print(Int(sender.value))
    }
    
}

