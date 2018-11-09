//
//  Swipe.swift
//  Amusment Park Pass Generator Part 1
//
//  Created by Kate Duncan-Welke on 11/9/18.
//  Copyright © 2018 Kate Duncan-Welke. All rights reserved.
//

import Foundation

extension Guest {
    func generatePass(entrant: Guest) -> Pass? {
        let success = entrant.isSubmissionErrorFree(entrant: entrant)
        if success {
            let pass = Pass(entrant: entrant)
            let result = swipe(pass: pass, forAccessTo: .Amusements)
            print("\(result)")
            return pass
        } else {
            print("Submission not error free, pass not generated")
            return nil
        }
    }
}

extension Employee {
    func generatePass(entrant: Employee) -> Pass? {
        let success = entrant.isSubmissionErrorFree(entrant: entrant)
        if success {
            let pass = Pass(entrant: entrant)
            let result = swipe(pass: pass, forAccessTo: .Amusements)
            print("\(result)")
            return pass
        } else {
            print("Submission not error free, pass not generated")
            return nil
        }
    }
}

func swipe(pass: Pass, forAccessTo: AccessPoint) -> Bool {
    switch forAccessTo {
    case .Rides:
        if pass.rideAccess == true {
            return true
        } else {
            print("Access denied")
            return false
        }
    case .Amusements:
        if pass.amusementAccess == true {
            return true
        } else {
            print("Access denied")
            return false
        }
    case .SkipLines:
        if pass.skipRideLines == true {
            return true
        } else {
            print("Access denied")
            return false
        }
    case .Kitchen:
        if pass.kitchenAccess == true {
            return true
        } else {
            print("Access denied")
            return false
        }
    case .RideControl:
        if pass.rideControlAccess == true {
            return true
        } else {
            print("Access denied")
            return false
        }
    case .Maintenance:
        if pass.maintenanceAccess == true {
            return true
        } else {
            print("Access denied")
            return false
        }
    case .Office:
        if pass.officeAccess == true {
            return true
        } else {
            print("Access denied")
            return false
        }
    case .FoodDiscount:
        if pass.foodDiscount != 0 {
            print("Discount of \(pass.foodDiscount)")
            return true
        } else {
            print("No discount available")
            return false
        }
    case .MerchDiscount:
        if pass.merchandiseDiscount != 0 {
            print("Discount of \(pass.merchandiseDiscount)")
            return true
        } else {
            print("No discount available")
            return false
        }
    }
}

enum AccessPoint {
    case Rides
    case Amusements
    case SkipLines
    case Kitchen
    case RideControl
    case Maintenance
    case Office
    case FoodDiscount
    case MerchDiscount
}

