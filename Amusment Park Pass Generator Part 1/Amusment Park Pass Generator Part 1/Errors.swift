//
//  GuestErrors.swift
//  Amusment Park Pass Generator Part 1
//
//  Created by Kate Duncan-Welke on 11/6/18.
//  Copyright © 2018 Kate Duncan-Welke. All rights reserved.
//

import Foundation

enum GuestRegistrationErrors: Error {
    case invalidFirstName(description: String)
    case invalidLastName(description: String)
    case noFreeChildBirthday(description: String)
    case invalidFreeChildBirthday(description: String)
}
