//
//  Pass.swift
//  Amusment Park Pass Generator Part 1
//
//  Created by Kate Duncan-Welke on 11/2/18.
//  Copyright © 2018 Kate Duncan-Welke. All rights reserved.
//

import Foundation

// classic pass, base
class Pass {
    let rideAccess = true
    let amusementAccess = true
    let firstName: String
    let lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

// VIP pass
class VipPass: Pass, SkipLines, Discount {
    var skipRideLines = true
    var foodDiscount = 10
    var merchandiseDiscount = 20
}

// free child pass
class FreeChildPass: Pass {
    // add error handling if birthday is lacking/makes the child older than 5
}

// food services employee pass
class FoodServicePass: Pass, FoodService, Discount {
    var kitchenAccess = true
    var foodDiscount = 15
    var merchandiseDiscount = 25
}

// ride services employee pass
class RideServicesPass: Pass, RideServices, Discount {
    var rideControAccess = true
    var foodDiscount = 15
    var merchandiseDiscount = 25
}

// maintenance employee pass
class MaintenancePass: Pass, FoodService, RideServices, Maintenance, Discount {
    var kitchenAccess = true
    var rideControAccess = true
    var maintenanceAccess = true
    var foodDiscount = 15
    var merchandiseDiscount = 25
}

// manager pass
class ManagerPass: Pass, FoodService, RideServices, Maintenance, Office, Discount {
    var kitchenAccess = true
    var rideControAccess = true
    var maintenanceAccess = true
    var officeAccess = true
    var foodDiscount = 25
    var merchandiseDiscount = 25
}






