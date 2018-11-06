//
//  Guest.swift
//  Amusment Park Pass Generator Part 1
//
//  Created by Kate Duncan-Welke on 11/2/18.
//  Copyright © 2018 Kate Duncan-Welke. All rights reserved.
//

import Foundation

class Guest: Entrant {
    let type: GuestType
    var birthday: Date?
    
    init(type: GuestType, birthday: Date? = nil, firstName: String, lastName: String) {
        self.type = type
        if let birthday = birthday {
            self.birthday = birthday
        }
        super.init(firstName: firstName, lastName: lastName)
    }
}

enum GuestType {
    case Classic
    case Vip
    case FreeChild
}

