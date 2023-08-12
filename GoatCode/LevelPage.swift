//
//  LevelPage.swift
//  GoatCode
//
//  Created by Kyle Han on 7/6/23.
//
import SwiftUI
import Foundation





struct LevelPage: View {
    @State private var messageIndex = 0
    let messages: [String] = [
        "this is message 1",
        "this is message 2",
        "this is message 3"
    ]
    
    var lessonCall: Double
    

    var body: some View {
        ZStack {
            Color("lightBrown")
                .ignoresSafeArea()
            
            VStack {
                // Title at top center
                Text("Intro to Loops")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding(.top, 30)
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, alignment: .center)
                
                Spacer()
                
                // Text above the "bubble" image
                Text(messages[messageIndex])
                    .font(.title2)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 16.0, style: .continuous))
                    .overlay(alignment: .bottomLeading) {
                        Image(systemName: "arrowtriangle.down.fill")
                            .font(.largeTitle)
                            .rotationEffect(.degrees(30))
                            .offset(x: 10, y: 20)
                            .foregroundColor(.white)
                    }
                    .padding(.bottom, 30)
                
                // Stationary "bubble" image anchored to the left
                HStack {
                    Image("bubble")
                        .resizable()
                        .frame(width: 175.0, height: 175.0)
                        .padding(.horizontal)
                        .padding(.bottom, 20)

                    Spacer()
                }
            }
            .padding(.horizontal, 10.0)

            // Buttons placement with message indicator
            VStack {
                Spacer()
                
                // Message number indicator
                  // A little space from the buttons
                
                HStack {
                    Spacer()
                    
                    Image("chevron-back-outline")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50.0)
                        .onTapGesture {
                            if messageIndex > 0 {
                                messageIndex -= 1
                            }
                        }
                    
                    Text("\(messageIndex + 1)/\(messages.count)")
                        .font(.title2)
                        .fontWeight(.medium)
                        .foregroundColor(Color.black)
                        .padding(.bottom, 10)
                    
                    Image("chevron-forward-outline")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50.0)
                        .onTapGesture {
                            if messageIndex < messages.count - 1 {
                                messageIndex += 1
                            }
                        }
                }
                .padding(.bottom, 30)
                .padding(.trailing, 30)
            }
        }
    }
}




    
    
struct LevelPage_Previews: PreviewProvider {
    static var previews: some View {
        LevelPage(lessonCall: 1.1)
    }
    
}
