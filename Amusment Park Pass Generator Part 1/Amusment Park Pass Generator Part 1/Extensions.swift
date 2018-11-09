//
//  Extensioons.swift
//  Amusment Park Pass Generator Part 1
//
//  Created by Kate Duncan-Welke on 11/8/18.
//  Copyright © 2018 Kate Duncan-Welke. All rights reserved.
//

import Foundation

extension Guest {
    func checkRequirements(entrant: Guest) throws {
        guard case entrant.firstName = firstName else {
            throw GuestRegistrationErrors.invalidFirstName
        }
        guard case entrant.lastName = lastName else {
            throw GuestRegistrationErrors.invalidLastName
        }
        if entrant.type == .FreeChild {
            if entrant.birthday == nil {
                throw GuestRegistrationErrors.noFreeChildBirthday
            } else if entrant.birthday!.timeIntervalSinceNow > 5 {
                // birthday was checked for nil so force unwrap is safe
                throw GuestRegistrationErrors.invalidFreeChildBirthday
            }
        }
    }
    
    func isSubmissionErrorFree(entrant: Guest) -> Bool {
        do {
            try checkRequirements(entrant: entrant)
        } catch GuestRegistrationErrors.invalidFirstName {
            print("Invalid first name")
            return false
        } catch GuestRegistrationErrors.invalidLastName {
            print("Invalid last name")
            return false
        } catch GuestRegistrationErrors.noFreeChildBirthday {
            print("No birthday supplied to verify free child")
            return false
        } catch GuestRegistrationErrors.invalidFreeChildBirthday {
            print("Birthday does not confirm child under 5 years of age")
            return false
        } catch let error {
            print("\(error)")
            return false
        }
        return true
    }
}

extension Employee {
    func checkRequirements(entrant: Employee) throws {
        guard case entrant.firstName = firstName else {
            throw EmployeeRegistrationErrors.invalidFirstName
        }
        guard case entrant.lastName = lastName else {
            throw EmployeeRegistrationErrors.invalidLastName
        }
        guard case entrant.streetAddress = streetAddress else {
            throw EmployeeRegistrationErrors.invalidAddress
        }
        guard case entrant.city = city else {
            throw EmployeeRegistrationErrors.invalidCity
        }
        guard case entrant.state = state else {
            throw EmployeeRegistrationErrors.invalidState
        }
        // don't need check for zipcode because init will not succeed without it
    }
    
    func isSubmissionErrorFree(entrant: Employee) -> Bool {
        do {
            try checkRequirements(entrant: entrant)
        } catch EmployeeRegistrationErrors.invalidFirstName {
            print("Invalid first naeme")
            return false
        } catch EmployeeRegistrationErrors.invalidLastName {
            print("Invalid last name")
            return false
        } catch EmployeeRegistrationErrors.invalidAddress {
            print("Invalid address")
            return false
        } catch EmployeeRegistrationErrors.invalidCity {
            print("Invalid city")
            return false
        } catch EmployeeRegistrationErrors.invalidState {
            print("Invalid state")
            return false
        } catch let error {
            print("\(error)")
            return false
        }
        return true
    }
}


