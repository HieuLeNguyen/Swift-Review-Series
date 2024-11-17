//
//  CustomTableViewCell.swift
//  Swift_ReviewSeries
//
//  Created by Nguyễn Văn Hiếu on 16/11/24.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var avtImageView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var statusImageView: UIImageView!
    @IBOutlet weak var verifyImageView: UIImageView!

    // MARK: - Variables
    static let identify = "CustomTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.backgroundColor = UIColor(red: 12/255, green: 5/255, blue: 23/255, alpha: 1)
        avtImageView.layer.cornerRadius = avtImageView.frame.width / 2
        avtImageView.clipsToBounds = true
        avtImageView.layer.borderWidth = 1
        avtImageView.layer.borderColor = UIColor.white.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        if selected {
            self.contentView.backgroundColor = UIColor(red: 12/255, green: 5/255, blue: 23/255, alpha: 0.6)
        } else {
            self.contentView.backgroundColor = UIColor(red: 12/255, green: 5/255, blue: 23/255, alpha: 1)
        }
    }

    // MARK: - Register nib
    static func nib() -> UINib {
        return UINib(nibName: identify, bundle: nil)
    }
    
    // FIXME: Enume for Status (Circle, Check, Check.double, Viewed)
    // MARK: - Transmit data into Cell
    func config(
        _ avt: UIImage,
        _ title: String,
        _ description: String,
        _ date: String,
        _ status: MessagerStatus,
        _ verify: Bool = false
    ) {
        titleLabel.text = title
        descriptionLabel.text = description
        avtImageView.image = avt
        dateLabel.text = date
        statusImageView.image = status.image
        verifyImageView?.image = verify ? UIImage(systemName: "checkmark.seal")
                                            : nil

    }
}
