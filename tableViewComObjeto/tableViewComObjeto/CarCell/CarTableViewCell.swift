//
//  CarTableViewCell.swift
//  tableViewComObjeto
//
//  Created by Jean Ramalho on 31/10/24.
//

import UIKit

class CarTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var brandLabel: UILabel!
    @IBOutlet weak var carImageView: UIImageView!
    
    static let identifier: String = "CarTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(_ data: Car) {
        
    }

    
    
}
