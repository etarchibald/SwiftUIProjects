//
//  ContentView.swift
//  IntroToSwiftUI
//
//  Created by Ethan Archibald on 1/18/24.
//

import SwiftUI

struct ContentView: View {
    
    
    @State private var isViewSummer = true
    @State private var isItGettingDarkOut = false
    
    
    var body: some View {
        VStack {
            Text("Important Test")
                .font(.largeTitle)
            
            Spacer()
            
            Text("Summer or Winter?")
            HStack {
                Button {
                    isViewSummer = true
                } label: {
                    Text("Summer")
                        .padding()
                        .frame(width: 100)
                }
                
                Button {
                    isViewSummer = false
                } label: {
                    Text("Winter")
                        .padding()
                        .frame(width: 100)
                }
            }
            .foregroundStyle(.white)
            .buttonStyle(.borderedProminent)
            
            Text("Light Mode or Dark Mode?")
            HStack {
                Button {
                    isItGettingDarkOut = false
                } label: {
                    Text("Light")
                        .padding()
                        .frame(width: 100)
                }
                
                Button {
                    isItGettingDarkOut = true
                } label: {
                    Text("Dark")
                        .padding()
                        .frame(width: 100)
                }
            }
            .foregroundStyle(.white)
            .buttonStyle(.borderedProminent)
            
            Spacer()
        }
        .containerRelativeFrame([.horizontal, .vertical])
        .background(isViewSummer == true ? Gradient(colors: [.yellow, .orange, .red]).opacity(0.6) : Gradient(colors: [.teal, .cyan, .white]).opacity(0.6))
        .preferredColorScheme(isItGettingDarkOut == false ? .light : .dark)
        
    }
}

#Preview {
    ContentView()
}
