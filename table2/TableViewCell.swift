//
//  TableViewCell.swift
//  table2
//
//  Created by Marvellous Dirisu on 25/05/2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var titleImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
