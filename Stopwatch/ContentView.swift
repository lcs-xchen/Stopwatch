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
                
                ZStack {
                    //First layer
                    Circle()
                        .foregroundColor(.gray)
                    .frame(width: 100)
                    
                    //Second layer
                    Circle()
                        .foregroundColor(.black)
                        .frame(width: 93)
                    
                    //Third layer
                    Circle()
                        .foregroundColor(.gray)
                        .frame(width: 89)
                    
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
