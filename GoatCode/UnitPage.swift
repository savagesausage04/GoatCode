//
//  UnitPage.swift
//  GoatCode
//
//  Created by Kyle Han on 7/6/23.
//
import SwiftUI
import Foundation

struct UnitPage: View {
    @State var homePageTap = false
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVStack {
                let colors: [Color] = [.red, .blue, .green, .orange, .purple]
                let colorss: [Color] = [.yellow, .blue, .green, .orange, .purple]
                let xPositions: [CGFloat] = [50, 100, 20, -20, 0]
                
                VStack(spacing: 40) {
                    ForEach(0..<5) { index in
                        if index % 4 == 0 && index != 0 {
                            DividerView()
                        }
                        
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
                
                VStack(spacing: 40) {
                    ForEach(0..<5) { index in
                        if index % 4 == 0 && index != 0 {
                            DividerView()
                        }
                        
                        Button(action: {
                            // Add your button action code here
                            print("Button \(index + 1) tapped!")
                        }) {
                            Circle()
                                .fill(colorss[index])
                                .frame(width: 100, height: 100)
                                .offset(x: xPositions[index])
                        }
                    }
                }
            }
        }
    }
}

struct DividerView: View {
    var body: some View {
        HStack {
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.gray)
            
            Text("Loop")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.black)
            
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.gray)
        }
        .frame(height: 40)
    }
}


        
        
struct UnitPage_Previews: PreviewProvider {
    static var previews: some View {
            UnitPage()
    }

}


