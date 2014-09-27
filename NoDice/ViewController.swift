//
//  ViewController.swift
//  NoDice
//
//  Created by Sam Bottoni on 9/27/14.
//  Copyright (c) 2014 Sam Bottoni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let numberOfDiceCells : [Int] = [1, 2, 3, 4, 5]
    let diceTypesCells : [String] = ["d3", "d4", "d6", "d8", "d10", "d12", "d20"]

    @IBOutlet var buttonNumberOfDice : UIButton!
    @IBOutlet var buttonDiceType : UIButton!
    @IBOutlet var textFieldResults : UITextView!
    @IBOutlet var buttonRoll : UIButton!
    @IBOutlet var tableNumberOfDice : UITableView!
    @IBOutlet var tableDiceType : UITableView!
    
    @IBAction func numberOfDiceTapped(sender : AnyObject) {
    
    }
    
    @IBAction func diceTypeTapped(sender : AnyObject) {
        
    }
    
    @IBAction func rollTapped(sender : AnyObject) {
        //get values of dropdowns and do random calc
        self.refreshUI()
        self.textFieldResults.text = "good job yo"
    }
    
    func refreshUI() {
        //hide dropdown tables
        self.tableNumberOfDice.hidden = true
        self.tableDiceType.hidden = true
        self.textFieldResults.text = String()
    }
    
    func clearResultsText() {
        
    }
    
    func initTableValues() {
        
    }
    
    override func viewDidLoad() {
        self.refreshUI()
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

