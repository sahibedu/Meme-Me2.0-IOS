//
//  MemeDetailViewController.swift
//  MeMe Me
//
//  Created by Sahib on 06/03/18.
//  Copyright © 2018 RTS Production. All rights reserved.
//

import UIKit

class MemeDetailViewController: UIViewController {
    @IBOutlet weak var imageDetail: UIImageView!
    
    var detailMeme : MemeStruct! = nil
    
    override func viewWillAppear(_ animated: Bool) {
        print(detailMeme.EditedImage)
        super.viewWillAppear(true)
        imageDetail.image = detailMeme.EditedImage
        tabBarController?.tabBar.isHidden = true
    }

}
