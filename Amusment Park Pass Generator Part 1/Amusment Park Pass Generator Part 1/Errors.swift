//
//  GuestErrors.swift
//  Amusment Park Pass Generator Part 1
//
//  Created by Kate Duncan-Welke on 11/6/18.
//  Copyright © 2018 Kate Duncan-Welke. All rights reserved.
//

import Foundation

enum RegistrationErrors: Error {
    case invalidFirstName
    case invalidLastName
}

enum GuestRegistrationErrors: Error {
    case invalidFirstName
    case invalidLastName
    case noFreeChildBirthday
    case invalidFreeChildBirthday
}

enum EmployeeRegistrationErrors: Error {
    case invalidFirstName
    case invalidLastName
    case invalidAddress
    case invalidCity
    case invalidState
}
