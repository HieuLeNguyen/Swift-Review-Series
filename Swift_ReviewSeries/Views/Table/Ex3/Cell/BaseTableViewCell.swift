import UIKit

class BaseTableViewCell: UITableViewCell {
    
    // MARK: - Variables
    static let identifier = "BaseTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

    // MARK: - Created nib
    static func nib() -> UINib {
        return UINib(nibName: "BaseTableViewCell", bundle: nil)
    }
}
