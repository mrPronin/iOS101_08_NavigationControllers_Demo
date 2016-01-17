//
//  ViewController.swift
//  MonsterBash
//
//  Created by Brian on 8/27/15.
//  Copyright © 2015 Razeware. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var monsters = ["Astro", "Munchie", "Fluffy", "Squido"]
  var monsterToShow = 0
  
  @IBOutlet weak var imageView: UIImageView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    imageView.image = UIImage(named: monsters[monsterToShow])
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

}

