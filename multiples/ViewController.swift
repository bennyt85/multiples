//
//  ViewController.swift
//  multiples
//
//  Created by admin on 4/5/16.
//  Copyright © 2016 bentalarico. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Properties
    
    var multiple = 0
    var runningSum = 0
    let MAX_SUM = 50
    
    
    //Outlets
    
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var addMultipleHere: UITextField!
    @IBOutlet weak var sumLbl: UILabel!
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var playBtn: UIButton!
    
        
    @IBAction func onAddBtnPressed(sender: AnyObject) {
        
        let newSum = runningSum + multiple
        updateLbl(runningSum, mul: multiple, newSum: newSum)
        runningSum += multiple
        
        if isGameOver() {
            restartGame()
        
        }
        
    }
    
    
    @IBAction func onPlayBtnPressed(sender: AnyObject) {
        if addMultipleHere.text != nil && addMultipleHere.text != "" {
            
            addMultipleHere.hidden = true
            logoImg.hidden = true
            playBtn.hidden = true
            sumLbl.hidden = false
            addBtn.hidden = false
            
            resetLbl()
            multiple = Int(addMultipleHere.text!)!
            runningSum = 0
        
    }
    
    
    

}

    func restartGame() {
            multiple = 0
            addMultipleHere.text = ""
            addMultipleHere.hidden = false
            logoImg.hidden = false
            playBtn.hidden = false
            sumLbl.hidden = true
            addBtn.hidden = true
            resetLbl()
}

    func resetLbl() {
            sumLbl.text = "Press Add to add!"
}

    func isGameOver() -> Bool {
        if runningSum >= MAX_SUM {
            return true
        } else {
            return false
        }
}

    func updateLbl(oldSum: Int, mul: Int, newSum: Int) {
        sumLbl.text = "\(oldSum) + \(mul) = \(newSum)"
    }
    
    
}



