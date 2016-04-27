//
//  homeViewController.swift
//  Mash
//
//  Created by Kenzie Macdonald on 4/13/16.
//  Copyright © 2016 Kenzie Macdonald. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    var mashModel: MashModel!
    
    var homeViewController: HomeViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mashModel = MashModel()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        print ("hello")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let locationViewController = segue.destinationViewController as? LocationViewController {
            locationViewController.mashModel = self.mashModel
        } else if let favoritesViewController = segue.destinationViewController as? FavoritesViewController {
            favoritesViewController.mashModel = self.mashModel
        }
    
    }
    
    @IBAction func unwindHomeViewController(sender: UIStoryboardSegue) {
        if let resultViewController = sender.sourceViewController as? ResultViewController {
            homeViewController.mashModel! = self.mashModel
        }
    }
}