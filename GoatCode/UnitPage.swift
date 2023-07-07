//
//  UnitPage.swift
//  GoatCode
//
//  Created by Kyle Han on 7/6/23.
//
import SwiftUI
import Foundation

struct UnitPage: View {
    var body: some View {
        
        let colors: [Color] = [.red, .blue, .green, .orange, .purple]
        let xPositions: [CGFloat] = [50, 100, 20, -20, 0]
        
        VStack(spacing: 40) {
            ForEach(0..<5) { index in
                Button(action: {
                    // Add your button action code here
                    print("Button \(index + 1) tapped!")
                }) {
                    Circle()
                        .fill(colors[index])
                        .frame(width: 100, height: 100)
                        .offset(x: xPositions[index])
                }
                
            }
        }
    }
    
}
        
        
struct UnitPage_Previews: PreviewProvider {
    static var previews: some View {
            UnitPage()
    }

}


