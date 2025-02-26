//
//  ReflectionClass.swift
//  CatchUp
//
//  Created by Oscar Mac on 26/2/2025.
//


//
//  ReflectionStruct.swift
//  CatchUp
//
//  Created by Tanay Solanki on 25/2/2025.
//

import Foundation

@Observable class ReflectionClass: Observable {
    var id: UUID /*= UUID()*/
    var reflection: String
    var friendName: String
    var duration: String
    var catchUpDate: Date // probably a unique datatype
    var catchUpTime: Date // probably a unique datatype
    var feelingSlide: Float
    var journalEntry: String
    
    init(id: UUID, reflection: String, friendName: String, duration: String, catchUpDate: Date, catchUpTime: Date, feelingSlide: Float, journalEntry: String) {
        self.id = id
        self.reflection = reflection
        self.friendName = friendName
        self.duration = duration
        self.catchUpDate = catchUpDate
        self.catchUpTime = catchUpTime
        self.feelingSlide = feelingSlide
        self.journalEntry = journalEntry
    }
}

var arrayOfReflections: [ReflectionClass] = [
    ReflectionClass(id: UUID(), reflection: "Reflection 1", friendName: "Joe", duration: "short", catchUpDate: Date.now, catchUpTime: Date.now, feelingSlide: 0.0, journalEntry: "Had a great time!"),
    ReflectionClass(id: UUID(), reflection: "Reflection 2", friendName: "John", duration: "short", catchUpDate: Date.now, catchUpTime: Date.now, feelingSlide: 0.0, journalEntry: "Had a great time!"),
    ReflectionClass(id: UUID(), reflection: "Reflection 3", friendName: "Bart", duration: "short", catchUpDate: Date.now, catchUpTime: Date.now, feelingSlide: 0.0, journalEntry: "Had a great time!"),
]