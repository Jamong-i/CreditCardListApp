//
//  CardListCell.swift
//  CreditCardList
//
//  Created by Jamong on 2023/01/16.
//

import UIKit

class CardListCell: UITableViewCell {
	@IBOutlet var cardNameLabel: UILabel!
	@IBOutlet var promotionLabel: UILabel!
	@IBOutlet var rankLabel: UILabel!
	@IBOutlet var cardImageView: UIImageView!
	
	override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
