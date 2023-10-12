//
//  Task.swift
//  Gestion Tasks
//
//  Created by Marion on 27/09/2023.
//

import Foundation

struct Task : Identifiable {
    var id = UUID()
    var title: String
    var dueDate: Date
    var description: String
    var isCompleted: Bool
    
    init(title: String, dueDate: Date, description: String, isCompleted: Bool = false) {
        self.title = title
        self.dueDate = dueDate
        self.description = description
        self.isCompleted = isCompleted
    }
}
