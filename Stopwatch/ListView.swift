//
//  List view.swift
//  Stopwatch
//
//  Created by Cindy Chen on 2023-11-06.
//

import SwiftUI

struct ListView: View {
    
    let label: String
    let time: String
    let labelColor: Color
    
    
    var body: some View {
        
        HStack{
            Text(label)
            Spacer()
            Text(time)
        }
        .font(.title2)
        .foregroundColor(labelColor)
    }
}

#Preview {
    ListView(
        label: "Lap 5",
        time: "00:00.95",
        labelColor: .black
    )
}
