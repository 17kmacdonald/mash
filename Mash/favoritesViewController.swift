//
//  favoritesModel.swift
//  Mash
//
//  Created by Kenzie Macdonald on 3/29/16.
//  Copyright © 2016 Kenzie Macdonald. All rights reserved.
//

import UIKit

class FavoritesViewController: UIViewController {
    var resultViewController: ResultViewController?
    var mashModel: MashModel?
    
    @IBOutlet weak var favoritesText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        favoritesText.text = mashModel!.favorites1
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}