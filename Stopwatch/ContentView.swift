//
//  ContentView.swift
//  Stopwatch
//
//  Created by Cindy Chen on 2023-11-02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            // First layer
            Color.black
                .ignoresSafeArea()
            
            // Second layer
            VStack {
                Text ("00:09.96")
                    .font(Font.system(size: 90, weight:.thin))
                    .foregroundColor(.white)
                
            // Create circular button
                HStack {
                    CircleButtonView(
                        buttonColor: Color("Dark Gray"),
                        label: "Reset",
                        labelColor: .white
                    )
                    
                    Spacer()
                    
                    CircleButtonView(
                        buttonColor: Color("Dark Green"),
                        label: "Start",
                        labelColor: .green
                    )
                }
                
                
                
            }
            .padding()
        }
    }
}

#Preview {
    TabView{
        
        Text("World Clock")
            .tabItem {
                Image(systemName: "globe")
                Text("World Clock")
            }
        
        Text("Alarm")
            .tabItem {
                Image(systemName: "alarm.fill")
                Text("Alarm")
            }
        
        ContentView()
            .tabItem {
                Image(systemName: "stopwatch.fill")
                Text("Stopwatch")
            }
        
        Text("Timer")
            .tabItem {
                Image(systemName: "timer")
                Text("Timer")
            }
        
            .accentColor(.orange)
    }
}
