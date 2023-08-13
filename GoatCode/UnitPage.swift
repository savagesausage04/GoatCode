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
        //------------------------ HOME PAGE ------------------------------------
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
        //-----------------------------UNIT PAGE---------------------------------
        else {
                NavigationView {
                    ScrollView(showsIndicators: false) {
                        LazyVStack {
                            
                            let xPositions: [CGFloat] = [50, 100, 20, -20, -10,
                                                         60, 80, -20, -40, 30, 50, 0, 50, -40, 50, 0,-30, -60,
                                                         -20, 10, 80, 30, 20, -50]
                            
                            let unitsVal: [Double] = [1.1, 1.2, 1.3, 2.1, 2.2, 2.3, 2.4, 2.5, 3.1, 3.2,
                                                      3.3, 4.1, 4.2, 4.3, 5.1, 5.2, 5.3, 6.1, 6.2, 6.3,]
                            let unitNames = ["Intro to Python",
                                             "Variables & Operations",
                                             "Logic",
                                             "Data Structures",
                                             "Iteration",
                                             "Functions",]
                            
                            VStack(spacing: 40) {
                                Spacer()
                                DividerView(title:"\(unitNames[0])")
                                //unitCount += 1
                                ForEach(0..<20) { index in
                                    if index > 0 && unitsVal[index] > (unitsVal[index-1]+0.2) {
                                        DividerView(title:"\(unitNames[Int(unitsVal[index])-1])")
                                    }
                                    
                                    Button(action: {
                                        print("Button \(index + 1) tapped!")
                                    }) {
                                        NavigationLink(destination: LevelPage(lessonCall: unitsVal[index])) {
                                            ZStack {
                                                Circle()
                                                    .fill(Color("lightBrown"))
                                                    .frame(width: 100, height: 100)
                                                
                                                Text(String(unitsVal[index]))
                                                    .font(.system(size: 24, weight: .bold, design: .rounded))
                                                    .foregroundColor(.white)
                                            }
                                            .rotationEffect(.degrees(180))
                                            
                                        }
                                    }
                                    .background(Color.clear)
                                    .offset(x: xPositions[index])
                                    
                                }
                                DividerView(title:"The End")
                                Image("Goat")
                                    .resizable()
                                    .padding([.top, .leading, .trailing])
                                    .cornerRadius(10)
                                    .aspectRatio(contentMode: .fit)
                                    .rotationEffect(.degrees(180))
                                    .background(Color.clear)
                                
                            }
                            .background(Color.clear)
                        }
                        .background(Color.clear)
                    }
                    .rotationEffect(.degrees(180))
                    .edgesIgnoringSafeArea(.all)
                    .background(GradientBackgroundAnimation().edgesIgnoringSafeArea(.all))
                }
                
            
        }
    }
}

struct DividerView: View {
    var title: String
    var body: some View {
        HStack {
            Rectangle()
                .frame(height: 2)
                .foregroundColor(.gray)
            
            Text(title)
                .font(.system(size: 26))
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .layoutPriority(1) // Ensure the text gets enough space
            
            Rectangle()
                .frame(height: 2)
                .foregroundColor(.gray)
        }
        .frame(height: 40)
        .rotationEffect(.degrees(180))
        .background(Color.clear)
        
    }
}


struct GradientBackgroundAnimation: View {
    
    @State private var animateGradient: Bool = false
    
    private let startColor: Color = Color("Gradient1")
    private let endColor: Color = Color("Gradient2")
    
    var body: some View {
            LinearGradient(colors: [startColor, endColor], startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
                .hueRotation(.degrees(animateGradient ? 45 : 0))
                .onAppear {
                    withAnimation(.easeInOut(duration: 3).repeatForever(autoreverses: true)) {
                        animateGradient.toggle()
                    }
                }
        }
    }

        
        
struct UnitPage_Previews: PreviewProvider {
    static var previews: some View {
        UnitPage()
            
    }

}


