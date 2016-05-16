//
//  jobViewController.swift
//  Mash
//
//  Created by Kenzie Macdonald on 3/9/16.
//  Copyright © 2016 Kenzie Macdonald. All rights reserved.
//

import UIKit

class JobViewController: UIViewController {
    
    var mashModel: MashModel?
    
    @IBOutlet weak var jobText1: UITextField!
    @IBOutlet weak var jobText2: UITextField!
    @IBOutlet weak var jobText3: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextJob(sender: UIButton) {
        if jobText1.text == "" {
            var jobAlert = UIAlertController(title: "Wait!", message: "Please fill in all three text boxes before moving on", preferredStyle: UIAlertControllerStyle.Alert)
            
            jobAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(jobAlert, animated: true, completion: nil)
        }
        if jobText2.text == "" {
            var jobAlert = UIAlertController(title: "Wait!", message: "Please fill in all three text boxes before moving on", preferredStyle: UIAlertControllerStyle.Alert)
            
            jobAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(jobAlert, animated: true, completion: nil)
        }
        if jobText3.text == "" {
            var jobAlert = UIAlertController(title: "Wait!", message: "Please fill in all three text boxes before moving on", preferredStyle: UIAlertControllerStyle.Alert)
            
            jobAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(jobAlert, animated: true, completion: nil)
        }
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let spouseViewController = segue.destinationViewController as? SpouseViewController {
            spouseViewController.mashModel = self.mashModel
            spouseViewController.mashModel!.job1 = jobText1.text!
            spouseViewController.mashModel!.job2 = jobText2.text!
            spouseViewController.mashModel!.job3 = jobText3.text!
        }
    }
    
    @IBAction func randomJob1(sender: UIButton) {
        let randomChoice = RandomChoices()
        jobText1.text = randomChoice.jobRandomChoices
    }
    
    @IBAction func randomJob2(sender: UIButton) {
        let randomChoice = RandomChoices()
        jobText3.text = randomChoice.jobRandomChoices
    }
    
    @IBAction func randomJob3(sender: UIButton) {
        let randomChoice = RandomChoices()
        jobText2.text = randomChoice.jobRandomChoices
    }
    
    
    
}
