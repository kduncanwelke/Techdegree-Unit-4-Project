//
//  DateLogic.swift
//  Amusment Park Pass Generator Part 1
//
//  Created by Kate Duncan-Welke on 11/10/18.
//  Copyright © 2018 Kate Duncan-Welke. All rights reserved.
//

import Foundation

// run when checking freechild age, converting entered string into date
func checkAge(birthdayDate: String?) -> Int? {
    let date = Date()
    
    guard let birthday = birthdayDate else {
        print("No birthday supplied")
        return nil
    }
    
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd/MM/yyyy"
    let dateFromString = dateFormatter.date(from: birthday)
    
    guard let convertedDate = dateFromString else {
        print("Date not convertable")
        return nil
    }
    
    // perform math with produced date compared to current date
    guard let difference = Calendar.current.dateComponents([.day], from: convertedDate, to: date).day else {
        print("Calculation failed")
        return nil
    }
    let age = difference / 365
    
    print("\(age)")
    return age
   
}

// run during swipe to check if it is visitor's birthday
func checkForBirthday(personWithPass: Pass) {
    let date = Date()
    let calendar = Calendar.current
    let currentMonth = calendar.component(.month, from: date)
    let currentDay = calendar.component(.day, from: date)
    
    guard let birthday = personWithPass.entrant.birthday else {
        print("No birthday supplied")
        return
    }
    
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd/MM/yyyy"
    let dateFromString = dateFormatter.date(from: birthday)
    
    guard let convertedDate = dateFromString else {
        print("Date not convertable")
        return
    }
    
    let entrantBirthdayMonth = calendar.component(.month, from: convertedDate)
    let entrantBirthdayDay = calendar.component(.day, from: convertedDate)
    
    if entrantBirthdayMonth == currentMonth && entrantBirthdayDay == currentDay {
        print("Happy birthday \(personWithPass.entrant.firstName) \(personWithPass.entrant.lastName)!")
    }
    
}
