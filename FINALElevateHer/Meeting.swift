//
//  Meeting.swift
//  FINALElevateHer
//
//  Created by Nikki  on 7/31/25.
//

import Foundation
import SwiftData

@Model
class Meeting {
    
    var name: String
    var dateOf: Date
    
    init(name: String, dateOf: Date) {
        self.name = name //assigns name to itself
        self.dateOf = dateOf //assigns dateOf to itself
    }
}
