//
//  ViewController.swift
//  UIStepper
//
//  Created by Jean Ramalho on 27/09/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var labelValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stepper.minimumValue = 0
        stepper.value = 0
        stepper.maximumValue = 100
        // essa funcao indica de quanto em quanto os valores vao pular, se de 1 em 1, 10 em 10, 30 em 30 e assim sucessivamente
        stepper.stepValue = 10
    }

    @IBAction func tappedStepper(_ sender: UIStepper) {
        print(sender.value)
        labelValue.text = String(Int(sender.value))
    }
    
}

