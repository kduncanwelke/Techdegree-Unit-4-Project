//
//  ViewController.swift
//  Amusment Park Pass Generator Part 1
//
//  Created by Kate Duncan-Welke on 11/2/18.
//  Copyright © 2018 Kate Duncan-Welke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var seconds = 0
    var isTimerOn = false
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      
        /*let person = Guest(type: .FreeChild, firstName: "kgghg", lastName: "sdfkg", birthday: "10/11/2016")
        let pass = person.generatePass(entrant: person)
        if let pass = pass {
           swipe(pass: pass, forAccessTo: .Kitchen)
        }*/
        
        
        /*let person2 = Guest(type: .Classic, firstName: "", lastName: "dksg", birthday: nil)
        let pass2 = person2.generatePass(entrant: person2)
        if let pass2 = pass2 {
           swipe(pass: pass2, forAccessTo: .Office)
        }*/
        
        
        /*let person3 = Employee(type: .FoodService, streetAddress: "gkgg", city: "kdf", state: "", zipCode: 47556, firstName: "kfg", lastName: "sg", birthday: nil)
        let pass3 = person3.generatePass(entrant: person3)
        if let pass3 = pass3 {
            swipe(pass: pass3, forAccessTo: .Amusements)
        }*/

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func runTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(updateTimer)), userInfo: nil, repeats: true)
    }
    
    // run while timer is active
    @objc func updateTimer() {
        seconds += 1
        print("timer run")
        // invalidate timer upon reaching 5 seconds
        if seconds == 5 {
            timer.invalidate()
            seconds = 0
        }
    }

}

