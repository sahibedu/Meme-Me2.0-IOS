//
//  MemeTableViewCell.swift
//  MeMe Me
//
//  Created by Sahib on 06/03/18.
//  Copyright © 2018 RTS Production. All rights reserved.
//

import UIKit

class MemeTableViewCell: UITableViewCell {
    @IBOutlet weak var imageOutlet: UIImageView!
    @IBOutlet weak var topTextView: UITextField!

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func setupCellWith(Meme:MemeStruct){
        imageOutlet.image = Meme.EditedImage
        topTextView.text = Meme.topText
    }

}
