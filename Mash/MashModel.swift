//
//  MashModel.swift
//  Mash
//
//  Created by Kenzie Macdonald on 3/14/16.
//  Copyright © 2016 Kenzie Macdonald. All rights reserved.
//

import Foundation

class MashModel {
    var location1 = ""
    var location2 = ""
    var location3 = ""
    var locationYouHave = ""
    
    var spouse1 = ""
    var spouse2 = ""
    var spouse3 = ""
    var spouseYouHave = ""
    
    var job1 = ""
    var job2 = ""
    var job3 = ""
    var jobYouHave = ""
    
    var car1 = ""
    var car2 = ""
    var car3 = ""
    var carYouHave = ""
    
    var kids1 = ""
    var kids2 = ""
    var kids3 = ""
    var kidsYouHave = ""
    
    var house = ""
    var houseYouHave = ""
    
    var favorites1 = ""

    func mashLocation() {
        let randomLocation = Int(arc4random_uniform(2))

        
        if randomLocation == 0 {
        locationYouHave = location1
        }
        
        else if randomLocation == 1 {
        locationYouHave = location2
        }
        
        else if randomLocation == 2 {
        locationYouHave = location3
            }
    }

    func mashKids() {
        
            
        let randomKids = Int(arc4random_uniform(2))
            
        if randomKids == 0 {
        kidsYouHave = kids1
        }
        
        else if randomKids == 1 {
        kidsYouHave = kids2
        }
        
        else if randomKids == 2 {
        kidsYouHave = kids3
        }
    }

    func mashSpouse() {
        let randomSpouse = Int(arc4random_uniform(2))
       
        
        if randomSpouse == 0 {
        spouseYouHave = spouse1
        }
        
        else if randomSpouse == 1 {
        spouseYouHave = spouse2
        }
        
        else if randomSpouse == 2 {
        spouseYouHave = spouse3
        }
    }

    func mashJob() {
        let randomJob = Int(arc4random_uniform(2))
        
        if randomJob == 0 {
        jobYouHave = job1
        }
        
        else if randomJob == 1 {
        jobYouHave = job2
        }
        
        else if randomJob == 2 {
        jobYouHave = job3
        }
    }
        
    func mashCar() {
        let randomCar = Int(arc4random_uniform(2))

        
        if randomCar == 0 {
        carYouHave = car1
        }
        
        else if randomCar == 1 {
        carYouHave = car2
        }
        
        else if randomCar == 2 {
        carYouHave = car3
        }
    }

    func mashHouse() {
        
        let randomHouse = Int(arc4random_uniform(3))
        
        if randomHouse == 0 {
        houseYouHave = "mansion"
        }
        
        else if randomHouse == 1 {
        houseYouHave = "apartment"
        }
        
        else if randomHouse == 2 {
        houseYouHave = "shack"
        }
        
        else if randomHouse == 3 {
        houseYouHave = "house"
        }
    }
}
