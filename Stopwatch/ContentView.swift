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
                Spacer()
                Text ("00:09.96")
                    .font(Font.system(size: 90, weight:.thin))
                    .foregroundColor(.white)
                Spacer()
                
                // Create circular button
                HStack {
                    CircleButtonView(
                        buttonColor: Color("DarkGrey"),
                        label: "Reset",
                        labelColor: .white
                    )
                    Spacer()
                    Circle ()
                        .frame(width: 10)
                    
                    Circle ()
                        .frame(width: 10)
                        .foregroundColor(.gray)
                    
                    
                    Spacer()
                    
                    CircleButtonView(
                        buttonColor: Color("DarkGreen"),
                        label: "Start",
                        labelColor: .green)
                }
                
                // List of times
                HStack{
                    
                    List_view (
                        label5: "Lap 5",
                        label4: "Lap 4",
                        label3: "Lap 3",
                        label2: "Lap 2",
                        label1: "Lap 1",
                        labelColor5: .white,
                        labelColor4: .red,
                        labelColor3: .green,
                        labelColor2: .white,
                        labelColor1: .white
                    )
                    
                    Spacer()
                    Spacer()
                    
                    List_view (
                        label5: "00:00.98",
                        label4: "00:04.08",
                        label3: "00:00.96",
                        label2: "00:02.76",
                        label1: "00:01.16",
                        labelColor5: .white,
                        labelColor4: .red,
                        labelColor3: .green,
                        labelColor2: .white,
                        labelColor1: .white
                    )
                    
                        
                        
                        .listRowSeparatorTint(.gray)
                        // Remove inset from list items
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    
                
               
                }
                // Set the amount of vertical height we want this list to take up
                .frame(height: 300)
                // Adjust list style to match design
                .listStyle(.plain)
                
            }
            .padding()
        }
    }

}

#Preview {
    
    TabView(selection: .constant(3)){
        
        Text("World Clock")
            .tabItem {
                Image(systemName: "globe")
                Text("World Clock")
            }
            .tag(1)
        
        Text("Alarm")
            .tabItem {
                Image(systemName: "alarm.fill")
                Text("Alarm")
            }
            .tag(2)
        
        ContentView()
            .tabItem {
                Image(systemName: "stopwatch.fill")
                Text("Stopwatch")
            }
            .tag(3)
        
        Text("Timer")
            .tabItem {
                Image(systemName: "timer")
                Text("Timer")
            }
            .tag(4)
    }
    .accentColor(.orange)
    .preferredColorScheme(.dark)
    
}
