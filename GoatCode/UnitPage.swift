//
//  UnitPage.swift
//  GoatCode
//
//  Created by Kyle Han on 7/6/23.
//
import SwiftUI
import Foundation



struct UnitPage: View {
    @State var showHome = true
    
    var body: some View {
        if showHome {
            ZStack {
                // Use the color as background
                Color("lightBrown")
                    .edgesIgnoringSafeArea(.all)  // Ignore safe area to fill entire screen
                    .onTapGesture{
                        showHome = false
                    }
                
                // Content of the page
                VStack {
                    Spacer()  // Pushes content towards the center
                    
                    Image("Goat")
                        .resizable()
                        .padding([.top, .leading, .trailing])
                        .cornerRadius(10)
                        .aspectRatio(contentMode: .fit)
                    
                    Text("Welcome to GoatCode")
                        .font(.largeTitle)
                        .fontWeight(.light)
                        .foregroundColor(Color.black)  
                        .offset(y: -40)
                    
                    Text("Tap to continue...")
                        .font(.body)
                        .offset(y: 70)
                        .opacity(0.5)

                    
                    Spacer()
                }
                
            }
        }
        else {
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
                                    print("Button \(index + 1) tapped!")
                                }) {
                                    NavigationLink(destination: LevelPage()) {
                                        ZStack {
                                            Circle()
                                                .fill(Color("lightBrown"))
                                                .frame(width: 100, height: 100)
                                            
                                            Text("\(index + 1)")
                                                .font(.system(size: 24, weight: .bold, design: .rounded))
                                                .foregroundColor(.white)
                                        }.rotationEffect(.degrees(180))
                                            .offset(x: xPositions[index])
                                    }
                                }
                            }
                            DividerView()
                        }
                    }
                }
                .rotationEffect(.degrees(180))
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
        .rotationEffect(.degrees(180))
    }
}




        
        
struct UnitPage_Previews: PreviewProvider {
    static var previews: some View {
          UnitPage()
            
    }

}


