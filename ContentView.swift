//
//  ContentView.swift
//  Gestion Tasks
//
//  Created by Marion on 27/09/2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: TaskViewModel
    @State private var isAddingTask = false
    @State private var selectedTask: Task? = nil
    
//    @State var tasks: [Task]
    
    private let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }()
    
    var body: some View {
        TabView {
            NavigationView {
                List(viewModel.tasks) { task in
                    NavigationLink(destination: TaskDetailView(viewModel: viewModel, task: task)) {
                        VStack(alignment: .leading) {
                            Text("\(task.title)")
                                .font(.headline)
                            Text("Echéance : \(task.dueDate, formatter: dateFormatter)")
                                .font(.subheadline)
                            Text("Description : \(task.description)")
                                .font(.subheadline)
                        }
                    }
                    .onTapGesture {
                        selectedTask = task
                    }
                }
                .navigationBarTitle("Liste des tâches")
            }
        }
    }
}
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: TaskViewModel())
    }
}
