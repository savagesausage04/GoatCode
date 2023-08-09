//
//  LevelPage.swift
//  GoatCode
//
//  Created by Kyle Han on 7/6/23.
//
import SwiftUI
import Foundation

struct LevelPage: View {
    
    let message = "Lorem ipsum dolor sit amet, consdipiscing elit. Nullam et velit diam. Morbi pellentesque nisl sit amet tempus gravida. Suspendisse potenti. Suspendisse potenti."
    var body: some View {
       
        
        
         ZStack {
         Color("lightBrown")
                 .ignoresSafeArea()
         
         
         VStack(alignment: .leading, spacing: 20.0) {
         
         Text("Intro to Loops")            .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/).fontWeight(.semibold).padding(.horizontal)
         
             Text(message)
         .font(.title2)
         .padding()
         .background(.white)
         .clipShape(RoundedRectangle(cornerRadius: 16.0, style: .continuous))
         .overlay(alignment: .bottomLeading) {
             Image(systemName: "arrowtriangle.down.fill")
                 .font(.largeTitle)
                 .rotationEffect(.degrees(30))
                 .offset(x: 10, y: 20)
                 .foregroundColor(.white)
         }
         
         
         }
         .padding(.horizontal, 10.0)
         
         }
        
        
       
            
        }
    }
    
    
struct LevelPage_Previews: PreviewProvider {
    static var previews: some View {
        LevelPage()
    }
    
}
