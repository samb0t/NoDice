//
//  ViewController.swift
//  NoDice
//
//  Created by Sam Bottoni on 9/27/14.
//  Copyright (c) 2014 Sam Bottoni. All rights reserved.
//

import UIKit
import Darwin

class ViewController: UIViewController {

    @IBOutlet var textFieldResults : UITextView!
    @IBOutlet var buttonRoll : UIButton!
    @IBOutlet var segmentedDiceType : UISegmentedControl!
    @IBOutlet var segmentedNumberOfDice : UISegmentedControl!
    
    
    @IBAction func rollTapped(sender : AnyObject) {
        self.refreshUI()
        let numberOfDice = self.segmentedNumberOfDice.titleForSegmentAtIndex(self.segmentedNumberOfDice.selectedSegmentIndex)?.toInt()
        let diceType = self.segmentedDiceType.titleForSegmentAtIndex(self.segmentedDiceType.selectedSegmentIndex)?.stringByReplacingOccurrencesOfString("d", withString: "", options: NSStringCompareOptions.AnchoredSearch, range: nil).toInt()
        self.textFieldResults.text = self.getResultsList(numberOfDice!, diceType: diceType!)
    }
    
    func refreshUI() {
        self.textFieldResults.text = String()
    }
    
    func getResultsList(numberOfDice: Int, diceType: Int) -> String {
        var resultsString = String()
        for i in 0..<numberOfDice {
            resultsString += "\(String(self.getRandomNum(diceType))) \n"
        }
        return resultsString
    }
    
    func getRandomNum(maxInt: Int) -> Int {
        return Int(arc4random_uniform(UInt32(maxInt))) + 1
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

