//
//  locationRandomChoices.swift
//  Mash
//
//  Created by Kenzie Macdonald on 5/10/16.
//  Copyright © 2016 Kenzie Macdonald. All rights reserved.
//

import Foundation

class RandomChoices {
    var locationRandomChoices: String {
        let locations = ["California", "Florida", "New York", "Paris", "London", "Bora Bora", "Barcelona", "Sydney", "Maui", "Rio de Janeiro", "San Francisco", "Los Angeles", "Prague", "Yellowstone", "Yosemite", "Bahamas", "Vancouver", "Washington D.C.", "U.S. Virgin Islands", "Budapest", "Las Vegas", "Hong Kong", "Tokyo", "Puerto Rico", "Venice", "Edinborgh"]
        let index = Int(arc4random_uniform(UInt32(locations.count)))
        return locations[index]
    }
    
    var carRandomChoices: String {
        let cars = ["BMW", "Audi", "Tesla", "Porsche", "Ferrari", "Ford", "Buick Encore", "Chevrolet Camaro", "Fiat 500", "Ford Escape", "Mustang", "Honda Accord", "Mazda", "Mini Cooper", "Volkswagen Bug", "Subaru", "Toyato Camry", "Corvette", "Audi TT", "Mercedes", "Garbage Truck", "Jeep Wrangler", "Jeep Grand Cherokee", "Jeep Patriot", "Audi R8", "Audi A5", "BMW i8"]
        let index = Int(arc4random_uniform(UInt32(cars.count)))
        return cars[index]
    }
    
    var jobRandomChoices: String {
        let jobs = ["clown", "nun", "doctor", "dentist", "computer systems analyst", "nurse", "physical therapist", "yoga teacher", "teacher", "software developer", "surgeon", "statistician", "biomedical engineer", "mathematician", "translator", "massage therapist", "couch potatoe", "CEO", "lawyer", "sales manager", "veterinarian", "police officer", "farmer"]
        let index = Int(arc4random_uniform(UInt32(jobs.count)))
        return jobs[index]
    }
    
    var spouseRandomChoices: String {
        let spouses = ["Tom Cruise", "Obama", "Bill Clinton", "Hillary Clinton", "Ryan Gosling", "Leonardo DiCaprio", "Matt Damon", "James Franco", "Justin Timberlake", "Donald Trump", "Will Smith", "Harry Styles", "Steph Curry", "George Clooney", "Zac Efron", "Shrek", "no one", "Snoop Dog", "Jack Black", "Oprah", "Beyoncé", "Madonna", "Megan Fox", "Snooki", "Angelina Jolie", "Jennifer Aniston", "Blake Lively", "your mom", "Vanessa Hudgens", "Amy Poehler"]
        let index = Int(arc4random_uniform(UInt32(spouses.count)))
        return spouses[index]
    }
    
}  