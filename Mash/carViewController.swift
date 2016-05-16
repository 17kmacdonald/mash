//
//  carViewController.swift
//  Mash
//
//  Created by Kenzie Macdonald on 3/9/16.
//  Copyright © 2016 Kenzie Macdonald. All rights reserved.
//

import UIKit

class CarViewController: UIViewController {
    
    var mashModel: MashModel?
    
    @IBOutlet weak var carText1: UITextField!
    @IBOutlet weak var carText2: UITextField!
    @IBOutlet weak var carText3: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextCar(sender: UIButton) {
        if carText1 == "" {
            var carAlert = UIAlertController(title: "Wait!", message: "Please fill in all three text boxes before moving on", preferredStyle: UIAlertControllerStyle.Alert)
            
            carAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(carAlert, animated: true, completion: nil)
        }
        if carText2.text == "" {
            var carAlert = UIAlertController(title: "Wait!", message: "Please fill in all three text boxes before moving on", preferredStyle: UIAlertControllerStyle.Alert)
            
            carAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(carAlert, animated: true, completion: nil)
        }
        if carText3.text == "" {
            var carAlert = UIAlertController(title: "Wait!", message: "Please fill in all three text boxes before moving on", preferredStyle: UIAlertControllerStyle.Alert)
            
            carAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(carAlert, animated: true, completion: nil)
        }
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let kidsViewController = segue.destinationViewController as? KidsViewController {
            kidsViewController.mashModel = self.mashModel
            kidsViewController.mashModel!.car1 = carText1.text!
            kidsViewController.mashModel!.car2 = carText2.text!
            kidsViewController.mashModel!.car3 = carText3.text!
        }
    }
    
    @IBAction func randomCar1(sender: UIButton) {
        let randomChoice = RandomChoices()
        carText3.text = randomChoice.carRandomChoices
    }
    
    
    @IBAction func randomCar2(sender: UIButton) {
        let randomChoice = RandomChoices()
        carText1.text = randomChoice.carRandomChoices
    }
    
    
    @IBAction func randomCar3(sender: UIButton) {
        let randomChoice = RandomChoices()
        carText2.text = randomChoice.carRandomChoices
    }
    
}