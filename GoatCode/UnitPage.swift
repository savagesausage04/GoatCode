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
        NavigationView {
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    let xPositions: [CGFloat] = [50, 100, 20, -20, -10,
                                                 60, 80, -20, -40, 30, 50, 0, 50, -40, 50, 0,]
                    
                    VStack(spacing: 40) {
                        ForEach(0..<16) { index in
                            if index % 4 == 0 && index != 0 {
                                DividerView()
                            }
                            
                            Button(action: {
                                // Add your button action code here
                                print("Button \(index + 1) tapped!")
                            }) {
                                NavigationLink(destination: LevelPage()) {
                                    ZStack {
                                        Circle()
                                            .fill(Color("lightBrown"))
                                            .frame(width: 100, height: 100)
                                        
                                        Text("\(16 - index)")
                                            .font(.system(size: 24, weight: .bold, design: .rounded))
                                            .foregroundColor(.white)
                                    }
                                    .offset(x: xPositions[index])
                                }
                            }
                        }
                        DividerView()
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
                .frame(height: 2)
                .foregroundColor(.gray)
            
            Text("Loop")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
            
            Rectangle()
                .frame(height: 2)
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


