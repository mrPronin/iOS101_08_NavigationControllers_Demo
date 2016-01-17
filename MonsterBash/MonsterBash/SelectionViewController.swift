//
//  SelectionViewController.swift
//  MonsterBash
//
//  Created by Brian on 8/28/15.
//  Copyright © 2015 Razeware. All rights reserved.
//
  //
  //  SelectionViewController.swift
  //  MonsterBash
  //
  //  Created by Brian on 8/28/15.
  //  Copyright © 2015 Razeware. All rights reserved.
  //
  
  import UIKit
  
  class SelectionViewController: UIViewController {
    
    var monsters = ["Astro", "Munchie", "Fluffy", "Squido"]
    @IBOutlet weak var tableVIew: UITableView!
    
    override func viewDidLoad() {
      super.viewDidLoad()
      
      // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
      if segue.identifier == "MonsterSegue" {
        let monsterViewController = segue.destinationViewController as! ViewController
        if let indexPath = tableVIew.indexPathForSelectedRow {
          monsterViewController.monsterToShow = indexPath.row
        }

 
      }
    }
}

extension SelectionViewController : UITableViewDelegate, UITableViewDataSource {

  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return monsters.count
  }

  func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    performSegueWithIdentifier("MonsterSegue", sender: nil)
  }

  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("MonsterCell", forIndexPath: indexPath)
    cell.textLabel!.text = monsters[indexPath.row]
    cell.imageView?.image = UIImage(named: monsters[indexPath.row])
    return cell
  }
  
}
