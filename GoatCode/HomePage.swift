//
//  ContentView.swift
//  GoatCode
//
//  Created by Kyle Han on 6/12/23.
//

import SwiftUI
import Foundation

let backgroundGradient = LinearGradient(
    colors: [Color.blue, Color.orange],
    startPoint: .top, endPoint: .bottom)

struct HomePage: View {
    
    @State var homePageTap = false
    
    var body: some View {
        
        if (homePageTap == false){
                VStack {
                    Spacer()
                    Text("Welcome to GoatCode.")            .font(.largeTitle).fontWeight(.semibold).foregroundColor(Color.white)
                    
                    Image("Goat")
                        .resizable()
                        .cornerRadius(10)
                        .aspectRatio(contentMode: .fit)
                        .padding(.all)
                        .onTapGesture {
                            homePageTap = true
                        }
                    Spacer()
                } .background(Color.red)
        }
    }
    
    
    
    
    struct HomePage_Previews: PreviewProvider {
        static var previews: some View {
            HomePage()
        }
        
    }
    
    
}
