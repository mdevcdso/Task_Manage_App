//
//  TaskDetailView.swift
//  Gestion Tasks
//
//  Created by Marion on 28/09/2023.
//

import SwiftUI

struct TaskDetailView: View {
    @ObservedObject var viewModel: TaskViewModel
    var task: Task
    
    @State private var isEditing = false
    @State private var newTitle = ""
    @State private var newDescription = ""
    
    var body: some View {
        Form {
            Section(header: Text("Détails de la Tâche")) {
                if isEditing {
                    TextField("Nouveau Titre", text: $newTitle)
                    TextField("Nouvelle Description", text: $newDescription)
                } else {
                    Text("Titre: \(task.title)")
                    Text("Description: \(task.description)")
                }
            }
            
            Section {
                if isEditing {
                    Button(action: {
                        viewModel.updateTask(task: task, newTitle: newTitle, newDescription: newDescription)
                        isEditing.toggle()
                    }) {
                        Text("Sauvegarder")
                    }
                } else {
                    Button(action: {
                        isEditing.toggle()
                        newTitle = task.title
                        newDescription = task.description
                    }) {
                        Text("Modifier")
                    }
                }
                
                Button(action: {
                    viewModel.deleteTask(task: task)
                    isEditing.toggle()
                }) {
                    Text("Supprimer")
                }
            }
        }
        .navigationBarTitle("Détails de la Tâche")
    }
}

struct TaskDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = TaskViewModel()
        let sampleTask = Task(title: "Exemple de Tâche", dueDate: Date(), description: "Ceci est une tâche de démonstration")
        
        return TaskDetailView(viewModel: viewModel, task: sampleTask)
    }
}

