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
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
