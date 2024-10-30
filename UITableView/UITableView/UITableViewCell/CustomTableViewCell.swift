//
//  CustomTableViewCell.swift
//  UITableView
//
//  Created by Jean Ramalho on 09/10/24.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    static let identifier: String = "CustomTableViewCell"
    
    static func nib() -> UINib{
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        titleLabel.text = "Jean"
    }
    
}
