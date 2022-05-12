//
//  ListTableViewCell.swift
//  WordList
//
//  Created by 松田結衣 on 2022/05/11.
//

import UIKit

class ListTableViewCell: UITableViewCell {

    @IBOutlet var englishLabel: UILabel!
    @IBOutlet var japaneseTextLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
