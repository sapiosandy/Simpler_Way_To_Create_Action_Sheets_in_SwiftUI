//
//  ContentView.swift
//  Simpler_Way_To_Create_Action_Sheets_in_SwiftUI
//
//  Created by Sandra Gomez on 2/29/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showActionSheet = false
    @State private var buttonTapped = ""
    
    var body: some View {
        VStack (spacing: 25) {
            Text("\(buttonTapped)")
            Button(action: {
                showActionSheet.toggle()
            }) {
                Text("Show Alert")
            }
            .confirmationDialog("", isPresented: $showActionSheet) {
                Button("Dog") {
                    buttonTapped = "Dog"
                }
                Button("Cat") {
                    buttonTapped = "Cat"
                }
                Button("Bird") {
                    buttonTapped = "Bird"
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
