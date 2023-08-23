//
//  SettingsPage.swift
//  GoatCode
//
//  Created by Aayush Sehgal on 8/22/23.
//

import SwiftUI
import StoreKit

struct SettingsPage: View {
    // App Storage Variables
    @AppStorage("toggleGoat") var toggleGoat: Bool = true
    @AppStorage("backgroundColor1") var backgroundColor1Data: String = "#67E7A4"
    @AppStorage("backgroundColor2") var backgroundColor2Data: String = "#FFDAB9"
    @AppStorage("completed") private var completedEncoded: Data = Data()
    @AppStorage("tutorial_done") private var tutorial_done: Bool = true

    var backgroundColor1: Color {
        Color(hex: backgroundColor1Data)
    }

    var backgroundColor2: Color {
        Color(hex: backgroundColor2Data)
    }



    // Local state for confirmation alert
    @State private var showResetConfirmation: Bool = false
    
    var body: some View {
            NavigationView {
                Form {
                    // Toggle Goat Switch
                    Toggle(isOn: $toggleGoat) {
                        Text("Toggle Goat")
                    }
                    
                    // Reset App Data
                    Button(action: {
                        showResetConfirmation = true
                    }) {
                        Text("Reset App Data")
                            .foregroundColor(.red)
                    }
                    .alert(isPresented: $showResetConfirmation) {
                        Alert(title: Text("Reset All Data?"),
                              message: Text("Are you sure you want to reset all app data, including completed lessons? This cannot be undone."),
                              primaryButton: .destructive(Text("Reset")) {
                            // Resetting the app data
                            resetAppData()
                        },
                              secondaryButton: .cancel())
                    }
                    
                    // Color Pickers
                    ColorPicker("Background Color 1", selection: Binding(get: {
                        self.backgroundColor1
                    }, set: {
                        backgroundColor1Data = $0.toHex()
                    }))
                    
                    ColorPicker("Background Color 2", selection: Binding(get: {
                        self.backgroundColor2
                    }, set: {
                        backgroundColor2Data = $0.toHex()
                    }))
                    
                    
                    // Leave a Review Option
                    //                Button(action: {
                    //                    // Prompt for review
                    //                    SKStoreReviewController.requestReview()
                    //                }) {
                    //                    Text("Leave a review")
                    //                }
                }
                .navigationBarTitle("Settings", displayMode: .inline)
                .navigationViewStyle(StackNavigationViewStyle())
            }
            .navigationViewStyle(StackNavigationViewStyle())
        }

    // Logic to reset app data
    func resetAppData() {
        toggleGoat = false
        backgroundColor1Data = "#67E7A4"
        backgroundColor2Data = "#FFDAB9"
        completedEncoded = Data()
        tutorial_done = true
        // Add any other necessary resets here
    }
}

struct SettingsPage_Previews: PreviewProvider {
    static var previews: some View {
        SettingsPage()
    }
}
