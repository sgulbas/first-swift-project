//
//  ViewController.swift
//  FunFacts
//
//  Created by Shale Gulbas on 1/17/16.
//  Copyright © 2016 ShaleGulbas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FunFactLabel: UILabel!
    // @IBOutlet - type qualifier - IB stands for Interface Builder
    // optional (bang) indicates value might not exist (ie nil)
    
    @IBOutlet weak var funFactButton: UIButton!
    
    let factModel = FactModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FunFactLabel.text = factModel.getRandomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // calling button method with @IBAction
    @IBAction func showFunFact() {
        let randomColor = ColorModel().getRandomColor()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
        FunFactLabel.text = factModel.getRandomFact()
    }

}

