//
//  ReflectionStruct.swift
//  CatchUp
//
//  Created by Tanay Solanki on 25/2/2025.
//

import Foundation

@Observable class ReflectionClass: Observable {
    var id: UUID = UUID()
    var reflection: String
    var friendName: String
    var duration: String
    var catchUpDate: Date // probably a unique datatype
    var activity: String
    var feelingDouble: Float
    var journalEntry: String
    
    init(id: UUID, reflection: String, friendName: String, duration: String, catchUpDate: Date, activity: String, feelingDouble: Float, journalEntry: String) {
        self.id = id
        self.reflection = reflection
        self.friendName = friendName
        self.duration = duration
        self.catchUpDate = catchUpDate
        self.activity = activity
        self.feelingDouble = feelingDouble
        self.journalEntry = journalEntry
    }
}

var arrayOfReflections: [ReflectionClass] = [
    ReflectionClass(id: UUID(), reflection: "Reflection 1", friendName: "Joe", duration: "short", catchUpDate: Date.now, activity: "chatted", feelingDouble: 0.0, journalEntry: "Had a great time!"),
    ReflectionClass(id: UUID(), reflection: "Reflection 2", friendName: "John", duration: "short", catchUpDate: Date.now, activity: "coffee", feelingDouble: 0.0, journalEntry: "Had a great time!"),
    ReflectionClass(id: UUID(), reflection: "Reflection 3", friendName: "Bart", duration: "short", catchUpDate: Date.now, activity: "basketball", feelingDouble: 0.0, journalEntry: "Had a great time!"),
]

// Later, should look into "data persistence"

