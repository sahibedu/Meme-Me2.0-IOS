//
//  SavedMemeTableViewController.swift
//  MeMe Me
//
//  Created by Sahib on 22/02/18.
//  Copyright © 2018 RTS Production. All rights reserved.
//

import UIKit
class SavedMemeTableViewController : UIViewController,UITableViewDelegate,UITableViewDataSource{

    @IBOutlet weak var imageTableView: UITableView!
    
    var memes = [Meme]()
    
    override func viewDidLoad() {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        memes = appDelegate.memesArray
        print(memes)

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let meme1 = memes[indexPath.row]
        let prototypecell = tableView.dequeueReusableCell(withIdentifier: "memetablecell", for: indexPath)
        
        prototypecell.textLabel?.text=meme1.topText+" "+meme1.bottomText
        prototypecell.imageView?.image = meme1.EditedImage
        return prototypecell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("Segue called")
    }
    
    
    
}
