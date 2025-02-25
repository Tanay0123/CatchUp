//
//  ReflectionStruct.swift
//  CatchUp
//
//  Created by Tanay Solanki on 25/2/2025.
//

import Foundation

struct ReflectionStruct: Identifiable {
    var id: UUID = UUID()
    var reflection: String
    var friendName: String
    var duration: String
    var catchUpDate: Date // probably a unique datatype
    var catchUpTime: Date // probably a unique datatype
    var feelingSlide: Float
    var journalEntry: String
}
