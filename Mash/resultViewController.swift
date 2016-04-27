//
//  resultViewController.swift
//  Mash
//
//  Created by Kenzie Macdonald on 3/22/16.
//  Copyright © 2016 Kenzie Macdonald. All rights reserved.
//

import UIKit

import Social

class ResultViewController: UIViewController {
    var mashModel: MashModel?
    
    @IBOutlet weak var resultText: UITextView!
    
    @IBOutlet weak var resultButton: UIButton!
    
    @IBOutlet weak var playAgain: UIButton!
    
    @IBAction func resultsClicked(sender: UIButton) {
        resultButton.setTitle("Mash Again!", forState: .Normal)
        playAgain.setTitle("Start Over", forState:  .Normal)
        mashModel!.mashLocation()
        mashModel!.mashKids()
        mashModel!.mashJob()
        mashModel!.mashCar()
        mashModel!.mashHouse()
        mashModel!.mashSpouse()
        resultText.text = "You will live in a \(mashModel!.houseYouHave), married to \(mashModel!.spouseYouHave), driving a \(mashModel!.carYouHave), working as a \(mashModel!.jobYouHave) with \(mashModel!.kidsYouHave) kids, living in \(mashModel!.locationYouHave)."
    }
    
    
    
    @IBAction func playAgainClicked(sender: UIButton) {
        mashModel!.location1 = ""
        mashModel!.location2 = ""
        mashModel!.location3 = ""
        mashModel!.locationYouHave = ""
        
        mashModel!.spouse1 = ""
        mashModel!.spouse2 = ""
        mashModel!.spouse3 = ""
        mashModel!.spouseYouHave = ""
        
        mashModel!.job1 = ""
        mashModel!.job2 = ""
        mashModel!.job3 = ""
        mashModel!.jobYouHave = ""
        
        mashModel!.car1 = ""
        mashModel!.car2 = ""
        mashModel!.car3 = ""
        mashModel!.carYouHave = ""
        
        mashModel!.kids1 = ""
        mashModel!.kids2 = ""
        mashModel!.kids3 = ""
        mashModel!.kidsYouHave = ""
        
        mashModel!.house = ""
        mashModel!.houseYouHave = ""
    }
    
    @IBAction func favoriteTapped(sender: UIButton) {
        mashModel!.favorites1 = resultText.text
    }
    
    
    @IBAction func homeTapped(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func facebookButton(sender: AnyObject) {
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeFacebook) {
            var fbShare:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
            
            self.presentViewController(fbShare, animated: true, completion: nil)
            
        } else {
            var alert = UIAlertController(title: "Accounts", message: "Please login to a Facebook account to share.", preferredStyle: UIAlertControllerStyle.Alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let homeViewController = segue.destinationViewController as? HomeViewController {
            homeViewController.mashModel = self.mashModel
        }
    }
    
   // override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     //   if let favoritesViewController = segue.destinationViewController as? FavoritesViewController //{
       //     favoritesViewController.mashModel = self.mashModel
     //       favoritesViewController.mashModel!.favorites1 = favoritesText.text!
        //}
    //}
}