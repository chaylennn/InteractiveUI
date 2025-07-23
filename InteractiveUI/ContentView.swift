//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Scholar on 7/23/25.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    @State private var age: String = ""
    @State private var school: String = ""
    //state is a property wrapper monitors changes and tells SwiftUI to opdate the view whenever that variable is modifed!
    @State private var textName = "What is your name?"
    
    @State private var textAge = "How old are you?"
    
    @State private var textSchool = "What school do you go to?"
    var body: some View {
        VStack {

            Text(textName)
                .font(.title)
            TextField("Type your name here...", text: $name)
            //$ is a two way binding
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray,width:1)
            
            Text(textAge)
                .font(.title)
            TextField("Type your age here...", text: $age)
            //$ is a two way binding
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray,width:1)
            
            Text(textSchool)
                .font(.title)
            TextField("Type your school here...", text: $school)
            //$ is a two way binding
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray,width:1)
            
            
            Button("Submit") {
                textName = "Welcome, \(name)"
                textAge = "You are \(age) years old"
                textSchool = "You go to \(school)"
                
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
