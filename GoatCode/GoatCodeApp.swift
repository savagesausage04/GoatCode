//
//  GoatCodeApp.swift
//  GoatCode
//
//  Created by Kyle Han on 6/12/23.
// change

import SwiftUI

@main
struct GoatCodeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
