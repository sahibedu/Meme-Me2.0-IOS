//
//  SavedMemeCollectionViewController.swift
//  MeMe Me
//
//  Created by Sahib on 22/02/18.
//  Copyright © 2018 RTS Production. All rights reserved.
//

import UIKit

class SavedMemeCollectionViewController : UICollectionViewController{
    var memes = [Meme]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        memes = appDelegate.memesArray
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return memes.count
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let prototypecell = collectionView.dequeueReusableCell(withReuseIdentifier: "MemeCollectionViewCell", for: indexPath) as! MemeCollectionViewCell
        let memeAtIndex = memes[indexPath.row]
        prototypecell.memeImage.image = UIImage(cgImage: memeAtIndex.EditedImage as! CGImage)
        return prototypecell
    }
    
}
