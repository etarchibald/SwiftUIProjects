//
//  ContentView.swift
//  SwiftUIAnimationsLab
//
//  Created by Ethan Archibald on 1/25/24.
//

import SwiftUI

struct ContentView: View {
    @State private var startCountdown = false
    @State private var animateFirst = false
    @State private var animateFirstOut = false
    @State private var animateSecond = false
    @State private var animateSecondOut = false
    @State private var animateThird = false
    @State private var animateThirdOut = false
    @State private var animateGo = false
    
    var body: some View {
        VStack {
            Spacer()
            
            ZStack {
                if startCountdown {
                    Text("3")
                        .foregroundStyle(Color.white)
                        .font(.largeTitle)
                        .scaleEffect(animateFirst ? 1 : 10)
                        .opacity(animateFirst ? 1 : 0)
                        .opacity(animateFirstOut ? 0 : 1)
                    Text("2")
                        .foregroundStyle(Color.white)
                        .font(.largeTitle)
                        .scaleEffect(animateSecond ? 1 : 10)
                        .opacity(animateSecond ? 1 : 0)
                        .opacity(animateSecondOut ? 0 : 1)
                    Text("1")
                        .foregroundStyle(Color.white)
                        .font(.largeTitle)
                        .scaleEffect(animateThird ? 1 : 10)
                        .opacity(animateThird ? 1 : 0)
                        .opacity(animateThirdOut ? 0 : 1)
                    Text("GO!")
                        .foregroundStyle(Color.white)
                        .font(.largeTitle)
                        .scaleEffect(animateGo ? 1 : 10)
                        .opacity(animateGo ? 1 : 0)
                }
            }
            
            Spacer()
                
            Button {
                startCountdown.toggle()
                withAnimation(.smooth()) {
                    animateFirst.toggle()
                } completion: {
                    withAnimation(.smooth().delay(0.3)) {
                        animateFirstOut.toggle()
                        withAnimation(.easeIn.delay(0.8)) {
                            animateSecond.toggle()
                        }
                    } completion: {
                        withAnimation(.smooth().delay(0.3)) {
                            animateSecondOut.toggle()
                            withAnimation(.easeIn.delay(0.8)) {
                                animateThird.toggle()
                            }
                        } completion: {
                            withAnimation(.smooth().delay(0.3)) {
                                animateThirdOut.toggle()
                                withAnimation(.easeIn.delay(0.5)) {
                                    animateGo.toggle()
                                }
                            }
                        }
                    }
                }
            } label: {
                Text("Start Game")
            }
        }
        .containerRelativeFrame([.vertical, .horizontal])
        .background(.black)
    }
}

#Preview {
    ContentView()
}
