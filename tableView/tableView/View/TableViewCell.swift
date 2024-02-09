//
//  TableViewCell.swift
//  tableView
//
//  Created by Bivin Joseph on 18/01/24.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var titleLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
