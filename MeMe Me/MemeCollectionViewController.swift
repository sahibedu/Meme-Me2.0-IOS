//
//  MemeCollectionViewController.swift
//  MeMe Me
//
//  Created by Sahib on 06/03/18.
//  Copyright © 2018 RTS Production. All rights reserved.
//

import UIKit

private let reuseIdentifier = "memeCollectionViewCell"

class MemeCollectionViewController: UICollectionViewController {
    
    @IBOutlet weak var flowLayoutMeme: UICollectionViewFlowLayout!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
        let space:CGFloat = 3.0
        let dimension = (view.frame.size.width - (2 * space)) / 3.0
        
        flowLayoutMeme.minimumInteritemSpacing = space
        flowLayoutMeme.minimumLineSpacing = space
        flowLayoutMeme.itemSize = CGSize(width: dimension, height: dimension)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        collectionView?.reloadData()
    }

    // MARK: UICollectionViewDataSource
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return (UIApplication.shared.delegate as! AppDelegate).MemeData.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! MemeCollectionViewCell
        let meme = (UIApplication.shared.delegate as! AppDelegate).MemeData[indexPath.row]
        cell.editedImageView.image = meme.EditedImage
        
        return cell
    }

    // MARK: UICollectionViewDelegate



}
