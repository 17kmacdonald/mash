//
//  locationViewController.swift
//  Mash
//
//  Created by Kenzie Macdonald on 3/9/16.
//  Copyright © 2016 Kenzie Macdonald. All rights reserved.
//

import UIKit



class LocationViewController: UIViewController, UITextFieldDelegate {
    
    var mashModel: MashModel?

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }
    
    @IBOutlet weak var locationTextField1: UITextField!
    @IBOutlet weak var locationTextField2: UITextField!
    @IBOutlet weak var locationTextField3: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func nextLocation(sender: UIButton) {
        if locationTextField1.text == "" {
            var locationAlert = UIAlertController(title: "Wait!", message: "Please fill in all three text boxes before moving on", preferredStyle: UIAlertControllerStyle.Alert)
            
            locationAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(locationAlert, animated: true, completion: nil)
        }
            if locationTextField2.text == "" {
                    var locationAlert = UIAlertController(title: "Wait!", message: "Please fill in all three text boxes before moving on", preferredStyle: UIAlertControllerStyle.Alert)
                    
                    locationAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
                    self.presentViewController(locationAlert, animated: true, completion: nil)
                }
        if locationTextField3.text == "" {
            var locationAlert = UIAlertController(title: "Wait!", message: "Please fill in all three text boxes before moving on", preferredStyle: UIAlertControllerStyle.Alert)
            
            locationAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(locationAlert, animated: true, completion: nil)
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let carViewController = segue.destinationViewController as? CarViewController {
            carViewController.mashModel = self.mashModel
            carViewController.mashModel!.location1 = locationTextField1.text!
            carViewController.mashModel!.location2 = locationTextField2.text!
            carViewController.mashModel!.location3 = locationTextField3.text!
        }
        
    }
    
    
    
}