//
//  DemoTableViewCell.swift
//  UIKitDemo
//
//  Created by Mindaugas Balakauskas on 20/12/2022.
//

import UIKit

class DemoTableViewCell: UITableViewCell {
    @IBOutlet var imageViewIcon: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
