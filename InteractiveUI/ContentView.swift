//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Scholar on 7/23/25.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    //state is a property wrapper monitors changes and tells SwiftUI to opdate the view whenever that variable is modifed!
    @State private var textTitle = "What is your name?"
    var body: some View {
        VStack {

            Text(textTitle)
                .font(.title)
            TextField("Type your name here...", text: $name)
            //$ is a two way binding
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray,width:1)
            Button("Submit Name") {
                textTitle = "Welcome, \(name)"
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
        }
        .padding()

    }
}

#Preview {
    ContentView()
}
