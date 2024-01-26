//
//  DealingWithDataView.swift
//  IntroToSwiftUI
//
//  Created by Ethan Archibald on 1/19/24.
//

import SwiftUI

struct Person {
    var name: String
    var age: String
    var occupation: String
}

struct DealingWithDataView: View {
    @State private var person = Person(name: "", age: "", occupation: "")
    @State private var formSubmitted = false
    
    var body: some View {
        VStack {
            TextField("Name: ", text: $person.name)
            TextField("Age: ", text: $person.age)
            TextField("Occupation: ", text: $person.occupation)
            
            Button {
                formSubmitted = true
            } label: {
                Text("Submit")
            }
            .frame(width: 300, height: 50)
            .background(.blue)
            .foregroundStyle(.white)
            .clipShape(.rect(cornerRadius: 10))
            .padding()
            
            if formSubmitted {
                Text("\(person.name) is \(person.age) years old. \nOccupation: \(person.occupation)")
            }
        }
        .padding()
    }
}

#Preview {
    DealingWithDataView()
}
