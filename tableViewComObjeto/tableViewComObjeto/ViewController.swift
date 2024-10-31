//
//  ViewController.swift
//  tableViewComObjeto
//
//  Created by Jean Ramalho on 31/10/24.
//

import UIKit

class ViewController: UIViewController {
    
    var listBrand: [Car] = [Car(brand: "Fiat", brandImage: UIImage(named: "fiat") ?? UIImage()),
                            Car(brand: "Chevrolet", brandImage: UIImage(named: "chevrolet") ?? UIImage()),
                            Car(brand: "Ford", brandImage: UIImage(named: "ford") ?? UIImage()),
                            Car(brand: "BMW", brandImage: UIImage(named: "bmw") ?? UIImage()),
                            Car(brand: "Ferrari", brandImage: UIImage(named: "ferrari") ?? UIImage()),]
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CarTableViewCell.nib(), forCellReuseIdentifier: CarTableViewCell.identifier)
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}

