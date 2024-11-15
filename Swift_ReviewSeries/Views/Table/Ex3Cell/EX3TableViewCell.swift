//
//  EX3TableViewCell.swift
//  Swift_ReviewSeries
//
//  Created by Nguyễn Văn Hiếu on 16/11/24.
//

import UIKit

class EX3TableViewCell: UITableViewCell {
    
    // MARK: - Variables
    static let identifier: String = "EX3TableViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
//        contentView.backgroundColor = .green
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // MARK: - Register nib
    static func nib()-> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
}
