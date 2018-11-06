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
    let firstName: String
    let lastName: String
    
    let rideAccess = true
    let amusementAccess = true
    var skipRideLines: Bool { return false }
    var kitchenAccess: Bool { return false }
    var rideControlAccess: Bool { return false }
    var maintenanceAccess: Bool { return false }
    var officeAccess: Bool { return false }
    var foodDiscount: Int { return 0 }
    var merchandiseDiscount: Int { return 0 }
    
    var passType: String { return "Classic Pass" }
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

// VIP pass
class VipPass: Pass{
    override var skipRideLines: Bool { return true }
    override var foodDiscount: Int { return 10 }
    override var merchandiseDiscount: Int { return 20 }
    override var passType: String { return "VIP Pass" }
}

// free child pass
class FreeChildPass: Pass {
    // add error handling if birthday is lacking/makes the child older than 5
     override var passType: String { return "Free Child Pass" }
}

// food services employee pass
class FoodServicePass: Pass {
    override var kitchenAccess: Bool { return true }
    override var foodDiscount: Int { return 15 }
    override var merchandiseDiscount: Int { return 25 }
    override var passType: String { return "Food Services Employee Pass" }
}

// ride services employee pass
class RideServicesPass: Pass  {
    override var rideControlAccess: Bool { return true }
    override var foodDiscount: Int { return 15 }
    override var merchandiseDiscount: Int { return 25 }
    override var passType: String { return "Ride Services Employee Pass" }
}

// maintenance employee pass
class MaintenancePass: Pass {
    override var kitchenAccess: Bool { return true }
    override var rideControlAccess: Bool { return true }
    override var maintenanceAccess: Bool { return true }
    override var foodDiscount: Int { return 15 }
    override var merchandiseDiscount: Int { return 25 }
    override var passType: String { return "Maintenance Employee Pass" }
}

// manager pass
class ManagerPass: Pass {
    override var officeAccess: Bool { return true }
    override var kitchenAccess: Bool { return true }
    override var rideControlAccess: Bool { return true }
    override var maintenanceAccess: Bool { return true }
    override var foodDiscount: Int { return 25 }
    override var merchandiseDiscount: Int { return 25 }
    override var passType: String { return "Manager Pass" }
}





