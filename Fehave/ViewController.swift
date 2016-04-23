//
//  ViewController.swift
//  Fehave
//
//  Created by Chrishon Wyllie on 4/23/16.
//  Copyright © 2016 Chrishon Wyllie. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var timer = NSTimer()
    
    var time = 0
    
    var specifiedAmount: Int = 0
    
    //@IBOutlet weak var originalGoal: UILabel!
    
    @IBOutlet weak var original: UILabel!
    
    @IBOutlet weak var currentGoal: UILabel!
    
    @IBOutlet weak var daysRemaining: UILabel!
    
    @IBOutlet weak var savingAmount: UITextField!

    @IBAction func setAmount(sender: AnyObject) {
        
       let number = Int(savingAmount.text!)
        
        
        
        
    }

    /*
     CALL VENMO API
     
     get the current numbers
     
     */
    
    
    
    func increaseTimer() {
        
        time += 1
        
        //timerLabel.text = String(time)
        
        //You could also do this:
        //timerLabel.text = "\(time)"
        
    }

    
    func updateOriginal() {
        
        var originalNum = Int(original.text!)
        original.text = String(originalNum)
        
    }
    
    func updateCurrentGoal() {
        
        
        currentGoal.text = ""
        
        
    }
    
    func updateDaysRemaining() {
        

        daysRemaining.text = ""
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(ViewController.increaseTimer), userInfo: nil, repeats: true)
        
        
        
        if(time % 20 == 0) {
            
            //Call the functions
            updateOriginal()
            updateCurrentGoal()
            updateDaysRemaining()
            
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

