//
//  ContentView.swift
//  GoatCode
//
//  Created by Kyle Han on 6/12/23.
//

import SwiftUI

import Foundation


//let backgroundGradient = LinearGradient(
    //colors: [Color.blue, Color.orange],
    //startPoint: .top, endPoint: .bottom)


let lightBrown = UIColor(named: "lightBrown")
struct HomePage: View {
    
    @State var homePageTap = false
    
    var body: some View {
        ZStack {
            // Use the color as background
            Color("lightBrown")
                .edgesIgnoringSafeArea(.all)  // Ignore safe area to fill entire screen
            
            // Content of the page
                VStack {
                    Spacer()  // Pushes content towards the center
                    
                    Image("goat")
                        .resizable()
                        .padding([.top, .leading, .trailing])
                        .cornerRadius(10)
                        .aspectRatio(contentMode: .fit)
                    
                    Text("GoatCode")
                        .font(.largeTitle)
                        .fontWeight(.light)
                        .foregroundColor(Color.black)
        
                        
                        
                        Spacer()  // Pushes content towards the center
                    }
                
            }
        }
    }
    
    
    
    
    
    struct HomePage_Previews: PreviewProvider {
        static var previews: some View {
            HomePage()
        }
        
    }
    


