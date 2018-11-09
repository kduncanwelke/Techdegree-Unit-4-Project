//
//  Protocols.swift
//  Amusment Park Pass Generator Part 1
//
//  Created by Kate Duncan-Welke on 11/6/18.
//  Copyright © 2018 Kate Duncan-Welke. All rights reserved.
//

import Foundation

protocol EntrantRegistration {
}

protocol GuestRegistration: EntrantRegistration {
    func confirmEntrant(entrant: Guest) throws -> Bool
    func checkRequirements(entrant: Guest) throws
    func isSubmissionErrorFree(entrant: Guest) -> Bool
}

protocol EmployeeRegistration: EntrantRegistration {
    func confirmEntrant(entrant: Employee) throws -> Bool
    func checkRequirements(entrant: Employee) throws
    func isSubmissionErrorFree(entrant: Employee) -> Bool
}
