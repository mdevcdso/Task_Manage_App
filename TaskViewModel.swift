//
//  TaskViewModel.swift
//  Gestion Tasks
//
//  Created by Marion on 27/09/2023.
//

import Foundation


class TaskViewModel: ObservableObject {
    @Published var tasks: [Task] = [
        Task(title: "Text 01", dueDate: Date(), description: "Description 01"),
        Task(title: "Text 02", dueDate: Date(), description: "Description 02")
    ]
    
    func addTask(title: String, echeanceDate: Date, description: String) {
        let newTask = Task(title: title, dueDate: Date(), description: description)
        tasks.append(newTask)
    }
    
    func updateTask(task: Task, newTitle: String, newDescription: String) {
        if let index = tasks.firstIndex(where: { $0.id == task.id }) {
            tasks[index].title = newTitle
            tasks[index].description = newDescription
        }
    }
    
    func deleteTask(task: Task) {
        tasks.removeAll { $0.id == task.id }
    }
}
