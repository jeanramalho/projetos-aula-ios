//
//  ViewController.swift
//  UITableView
//
//  Created by Jean Ramalho on 09/10/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.configTableView()
    }

    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.identifier)
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell
        return cell ?? UITableViewCell()
    }
    
}

