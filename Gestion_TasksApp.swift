//
//  Gestion_TasksApp.swift
//  Gestion Tasks
//
//  Created by Marion on 27/09/2023.
//

import SwiftUI

@main
struct Gestion_TasksApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: TaskViewModel())
        }
    }
}
