//
//  LabView.swift
//  IntroToSwiftUI
//
//  Created by Ethan Archibald on 1/18/24.
//

import SwiftUI

struct LabView: View {
    
    @State private var selectedSport = Sport.golf
    @State private var isSubmitted = false
    
    
    var body: some View {
        VStack {
            Text("Favorite Sport")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .padding(.bottom, 100)
            
            VStack {
                HStack {
                    SportButtonView(sport: .golf, selectedSport: $selectedSport)
                    SportButtonView(sport: .football, selectedSport: $selectedSport)
                }
                HStack {
                    SportButtonView(sport: .soccer, selectedSport: $selectedSport)
                    SportButtonView(sport: . baseball, selectedSport: $selectedSport)
                }
            }
            .padding(.bottom, 100)
            .buttonStyle(.borderedProminent)
            .tint(.green)
            
            Button {
                withAnimation {
                    isSubmitted = true
                }
            } label: {
                Text("Submit")
            }
            .frame(width: 300, height: 50)
            .foregroundStyle(.white)
            .background(.blue)
            .clipShape(.rect(cornerRadius: 20))
            
            if isSubmitted {
                Text("You chose \(selectedSport.rawValue)")
                    .foregroundStyle(.white)
                    .animation(.easeIn, value: isSubmitted)
                    .transition(.move(edge: .leading))
            }
        }
        .containerRelativeFrame([.horizontal, .vertical])
        .background(.black)
        .onChange(of: selectedSport) {
            isSubmitted = false
        }
    }
}

#Preview {
    LabView()
}
