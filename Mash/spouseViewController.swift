//
//  spouseViewController.swift
//  Mash
//
//  Created by Kenzie Macdonald on 3/9/16.
//  Copyright © 2016 Kenzie Macdonald. All rights reserved.
//

import UIKit

class SpouseViewController: UIViewController {
    
    var mashModel: MashModel?
    
    @IBOutlet weak var spouseText1: UITextField!
    @IBOutlet weak var spouseText2: UITextField!
    @IBOutlet weak var spouseText3: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func nextSpouse(sender: UIButton) {
        
        if spouseText1.text == "" {
            var spouseAlert = UIAlertController(title: "Wait!", message: "Please fill in all three text boxes before moving on", preferredStyle: UIAlertControllerStyle.Alert)
            
            spouseAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(spouseAlert, animated: true, completion: nil)
    }
        if spouseText2.text == "" {
            var spouseAlert = UIAlertController(title: "Wait!", message: "Please fill in all three text boxes before moving on", preferredStyle: UIAlertControllerStyle.Alert)
            
            spouseAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(spouseAlert, animated: true, completion: nil)
        }
        
        if spouseText3.text == "" {
            var spouseAlert = UIAlertController(title: "Wait!", message: "Please fill in all three text boxes before moving on", preferredStyle: UIAlertControllerStyle.Alert)
            
            spouseAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(spouseAlert, animated: true, completion: nil)
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let resultViewController = segue.destinationViewController as? ResultViewController {
            resultViewController.mashModel = self.mashModel
        resultViewController.mashModel!.spouse1 = spouseText1.text!
        resultViewController.mashModel!.spouse2 = spouseText2.text!
        resultViewController.mashModel!.spouse3 = spouseText3.text!
        }
        
    }
    
}
