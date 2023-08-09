//
//  LevelPage.swift
//  GoatCode
//
//  Created by Kyle Han on 7/6/23.
//
import SwiftUI
import Foundation

struct LevelPage: View {
    var body: some View {
       
        
        
         ZStack {
         RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
             .frame(height: 550.0)
             .foregroundColor(Color.brown)
             .padding(.all)
             .offset(y: -90)
            
         Image("chevron-forward-outline")
                  .resizable()
                  .aspectRatio(contentMode: .fit)
                  .offset(x: 150, y: 350)
                  .frame(width: 50.0)
    
         Image("chevron-back-outline")
                  .resizable()
                  .aspectRatio(contentMode: .fit)
                  .offset(x: 70, y: 350)
                  .frame(width: 50.0)
         
         VStack(alignment: .leading, spacing: 20.0) {
         
         Text("Intro to Loops")            .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/).fontWeight(.semibold).padding(.horizontal)
         
         Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et velit diam. Morbi pellentesque nisl sit amet tempus gravida. Suspendisse potenti. Suspendisse potenti. Aenean ultricies eros vitae tellus volutpat, a tempor mi iaculis. Sed rutrum a leo quis faucibus. Nunc vitae suscipit orci, in malesuada felis. Duis blandit interdum nisl.")
         .padding(.horizontal)
             
         
         Image("BlockCode")
         .resizable()
         .cornerRadius(10)
         .aspectRatio(contentMode: .fit)
         .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
         
         Image("bubble")
                 .resizable()
                 .frame(width: 175.0, height: 175.0)
                 .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
                 .offset(y: 20)
            
             
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
