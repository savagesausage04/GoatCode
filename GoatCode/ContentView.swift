//
//  ContentView.swift
//  GoatCode
//
//  Created by Kyle Han on 6/12/23.
//

import SwiftUI

struct CustomColor {
    static let myColor = Color("lightBrown")
}

struct ContentView: View {
    var body: some View {
        
        /*ZStack {
         //.foregroundColor(CustomColor.myColor)
         
         VStack {
         
         Image("Goat")
         .resizable()
         .cornerRadius(10)
         .aspectRatio(contentMode: .fit)
         .padding(/*@START_MENU_TOKEN@*/[.top, .leading, .trailing]/*@END_MENU_TOKEN@*/)
         Text("GoatCode")
         .fontWeight(.semibold)
         .foregroundColor(Color.black)
         .font(.system(size: 40))
         Text("Learn code anywhere, anytime.")
         .foregroundColor(Color.black)
         
         
         
         
         }
         
         }*/
        
        /*ZStack {
         RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
         .frame(height: 600.0)
         .foregroundColor(Color.blue)
         .padding(.all)
         
         
         VStack(alignment: .leading, spacing: 20.0) {
         
         Text("Intro to Loops")            .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/).fontWeight(.semibold).padding(.horizontal)
         
         Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et velit diam. Morbi pellentesque nisl sit amet tempus gravida. Suspendisse potenti. Suspendisse potenti. Aenean ultricies eros vitae tellus volutpat, a tempor mi iaculis. Sed rutrum a leo quis faucibus. Nunc vitae suscipit orci, in malesuada felis. Duis blandit interdum nisl.")
         .padding(.horizontal)
         
         Image("BlockCode")
         .resizable()
         .cornerRadius(10)
         .aspectRatio(contentMode: .fit)
         .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
         
         
         }
         .padding(.horizontal, 10.0)
         
         }
         */
        //Circle()
        //.frame(width: 50.0, height: 50.0)
        //.foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        //.padding(.bottom, 10)
        
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
    
    
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
        
    }
    
    
}
