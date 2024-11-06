//
//  CustomTableViewCell.swift
//  CollectionViewAvancadaCurso
//
//  Created by Jean Ramalho on 06/11/24.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    static let identifier: String = "CustomTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
}
