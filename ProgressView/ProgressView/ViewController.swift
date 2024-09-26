//
//  ViewController.swift
//  ProgressView
//
//  Created by Jean Ramalho on 26/09/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var progressBarrProgressView: UIProgressView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
            
        progressBarrProgressView.progress = 0.7
        progressBarrProgressView.tintColor = .green
        progressBarrProgressView.trackTintColor = .lightGray.withAlphaComponent(0.6)
        let total = Progress.init(totalUnitCount: 100)
        total.completedUnitCount = 25
        progressBarrProgressView.setProgress(Float(total.fractionCompleted), animated: true)

    }


}

