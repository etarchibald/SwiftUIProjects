//
//  SportButtonView.swift
//  IntroToSwiftUI
//
//  Created by Ethan Archibald on 1/22/24.
//

import SwiftUI

struct SportButtonView: View {
    let sport: Sport
    @Binding var selectedSport: Sport
    
    private var isSelected: Bool {
        selectedSport == sport
    }
    
    var body: some View {

        Button {
            selectedSport = sport
        } label: {
            Text(sport.rawValue)
                .font(.title3)
                .padding(10)
                .frame(width: 100, height: 100)
        }
        .opacity(isSelected ? 1 : 0.2)
    }
}

#Preview {
    SportButtonView(sport: .baseball, selectedSport: .constant(.baseball))
}
