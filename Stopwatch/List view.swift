//
//  List view.swift
//  Stopwatch
//
//  Created by Cindy Chen on 2023-11-06.
//

import SwiftUI

struct List_view: View {
    
    let label5: String
    let label4: String
    let label3: String
    let label2: String
    let label1: String
    
    let labelColor5: Color
    let labelColor4: Color
    let labelColor3: Color
    let labelColor2: Color
    let labelColor1: Color
    
    
    var body: some View {
        
        List{
            
            Text(label5)
                .foregroundColor(labelColor5)
            
            Text(label4)
                .foregroundColor(labelColor4)
            
            Text(label3)
                .foregroundColor(labelColor3)
            
            Text(label2)
                .foregroundColor(labelColor2)
            
            Text(label1)
                .foregroundColor(labelColor1)
        }
    }
}

#Preview {
    List_view(
        label5: "Lap 5",
        label4: "Lap 4",
        label3: "Lap 3",
        label2: "Lap 2",
        label1: "Lap 1",
        labelColor5: .black,
        labelColor4: .red,
        labelColor3: .green,
        labelColor2: .black,
        labelColor1: .black
    )
}
