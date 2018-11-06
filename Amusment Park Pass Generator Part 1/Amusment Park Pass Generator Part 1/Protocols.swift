//
//  Protocols.swift
//  Amusment Park Pass Generator Part 1
//
//  Created by Kate Duncan-Welke on 11/6/18.
//  Copyright © 2018 Kate Duncan-Welke. All rights reserved.
//

import Foundation

protocol FoodService {
    var kitchenAccess: Bool { get set }
}

protocol RideServices {
    var rideControAccess: Bool { get set }
}

protocol Maintenance {
    var maintenanceAccess: Bool { get set }
}

protocol Office {
    var officeAccess: Bool { get set }
}

protocol SkipLines {
    var skipRideLines: Bool { get set }
}

protocol Discount {
    var foodDiscount: Int { get set }
    var merchandiseDiscount: Int { get set }
}
