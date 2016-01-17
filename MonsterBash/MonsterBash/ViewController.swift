//
//  ViewController.swift
//  MonsterBash
//
//  Created by Brian on 8/27/15.
//  Copyright © 2015 Razeware. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var imageView: UIImageView!
    
    //MARK: - Vars
    var monsters = ["Astro", "Munchie", "Fluffy", "Squido"]
    var monsterToShow = 0
    
    //MARK: - UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: monsters[monsterToShow])
        navigationItem.title = monsters[monsterToShow]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - Actions
    @IBAction func goBack(sender: UIButton) {
        navigationController?.popViewControllerAnimated(true)
    }
}

