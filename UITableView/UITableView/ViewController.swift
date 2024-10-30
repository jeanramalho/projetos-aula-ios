//
//  ViewController.swift
//  UITableView
//
//  Created by Jean Ramalho on 09/10/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var listName: [String] = ["Jean", "Tassis", "Bruno", "Weyder", "Pow", "Leozim", "Hugo", "Diego", "Welisson"]
    

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
    
    //Configura a quantidade de celulas a serem retornadas
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listName.count
    }
    
    //retorna a celula para a tableview
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell
        cell?.setupCell(title: listName[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    //retorna o valor da celula selecionada
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("O primo escoolhido foi: \(listName[indexPath.row])")
    }
    
    //Define a altura da celula
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
}

