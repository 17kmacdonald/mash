//
//  ViewController.swift
//  Mash
//
//  Created by Kenzie Macdonald on 1/20/16.
//  Copyright © 2016 Kenzie Macdonald. All rights reserved.
//

import UIKit

class KidsViewController: UIViewController {

    var mashModel: MashModel!
    
    @IBOutlet weak var kidsLabel3: UILabel!
    @IBOutlet weak var kidsLabel2: UILabel!
    @IBOutlet weak var kidsLabel1: UILabel!
    
    @IBOutlet weak var kidsSlider3: UISlider!
    @IBOutlet weak var kidsSlider2: UISlider!
    @IBOutlet weak var kidsSlider1: UISlider!
    
    @IBAction func sliderValueChanged(sender: UISlider) {
        var currentValue = Int(kidsSlider1.value)
        kidsLabel1.text = "\(currentValue)"
    }
    
    @IBAction func sliderValueChanged2(sender: UISlider) {
        var currentValue = Int(kidsSlider2.value)
        kidsLabel2.text = "\(currentValue)"
    }
    
    @IBAction func sliderValueChanged3(sender: UISlider) {
        var currentValue = Int(kidsSlider3.value)
        kidsLabel3.text = "\(currentValue)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let jobViewController = segue.destinationViewController as? JobViewController {
            jobViewController.mashModel = self.mashModel
            jobViewController.mashModel!.kids1 = kidsLabel1.text!
            jobViewController.mashModel!.kids2 = kidsLabel2.text!
            jobViewController.mashModel!.kids3 = kidsLabel3.text!
        }
    }

}