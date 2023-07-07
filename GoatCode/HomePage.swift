//
//  ContentView.swift
//  GoatCode
//
//  Created by Kyle Han on 6/12/23.
//

import SwiftUI
import Foundation

struct HomePage: View {
    var body: some View {
        
        
        ZStack {
            Color(.black).ignoresSafeArea()
            
            VStack {
                Text("Welcome to GoatCode.")            .font(.largeTitle).fontWeight(.semibold).foregroundColor(Color.white)
                
                Image("Goat")
                    .resizable()
                    .cornerRadius(10)
                    .aspectRatio(contentMode: .fit)
                    .padding(.all)
                
                
            }
        }
    }
}
        
        
        
        
        struct HomePage_Previews: PreviewProvider {
            static var previews: some View {
                HomePage()
            }
            
        }
        
        
