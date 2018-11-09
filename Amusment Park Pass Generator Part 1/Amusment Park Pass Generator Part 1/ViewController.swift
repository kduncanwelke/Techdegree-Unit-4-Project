//
//  ViewController.swift
//  Amusment Park Pass Generator Part 1
//
//  Created by Kate Duncan-Welke on 11/2/18.
//  Copyright © 2018 Kate Duncan-Welke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      
        let person = Guest(type: .Vip, firstName: "", lastName: "hgsdj")
        let pass = person.generatePass(entrant: person)
        
        let secondPerson = Guest(type: .FreeChild, firstName: "gfk", lastName: "dsjhf")
        let pass2 = secondPerson.generatePass(entrant: secondPerson)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

