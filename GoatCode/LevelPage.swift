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
        "this is message one jdkfjkdjfkdjfdfdjfkdjfkdf kdj fkd fkjdk fkd fkdj fkdjfk dkfdkjfkdkfkd fjkdj",
        "this is message two jdkfjdkf dkjf kdfkdjf dkjf kdjf dk fkdjf kdj fkdjfkjdk jfkd fdkf dkfdfkdfkdfkdkfjkdf",
        "this is message three dkfjkdjf dkfj kdjf kdjfkdjfkdjf dkfj kdj fkdj fkdj fkdjfkjdkfjkd fkfjdkfj dkfjdkjfkdjkfjdkjfkd fjkdjfkdjfkjdkfjdkjfkdjfkdjfkdjkfjdkjf dkf dkj fkdj fkd jfkd"
    ]
    
    var body: some View {
        ZStack {
            Color("lightBrown")
                .ignoresSafeArea()
            
            VStack {
                // Title at top center
                Text("Intro to Loops")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding(.top, 20)
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, alignment: .center)  // This centers the title
                
                Spacer()
                
                // Text above the "bubble" image
                Text(messages[messageIndex])
                    .font(.title2)
                    .frame(maxWidth: .infinity) // Ensure width is consistent
                    .padding()
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 16.0, style: .continuous))
                    .overlay(alignment: .bottomLeading) {
                        Image(systemName: "arrowtriangle.down.fill")
                            .font(.largeTitle)
                            .rotationEffect(.degrees(15))
                            .offset(x: 60, y: 20)
                            .foregroundColor(.white)
                    }
                    .padding(.bottom, 30) // Added vertical padding

                
                // Stationary "bubble" image anchored to the left
                HStack {
                    Image("bubble")
                        .resizable()
                        .frame(width: 175.0, height: 175.0)
                        .padding(.horizontal)
                        .padding(.bottom, 20) // This provides space from the bottom

                    Spacer()  // Pushes the image to the left
                }
            }
            .padding(.horizontal, 10.0)

            // Buttons placement
            VStack {
                Spacer() // Push content to the bottom
                
                HStack {
                    Spacer() // Push content to the right
                    
                    Image("chevron-back-outline")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50.0)
                        .onTapGesture {
                            if messageIndex > 0 {
                                messageIndex -= 1
                            }
                        }
                    
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
                .padding(.bottom, 30)  // Space from the bottom edge
                .padding(.trailing, 30)  // Space from the right edge
            }
        }
    }
}

    
    
struct LevelPage_Previews: PreviewProvider {
    static var previews: some View {
        LevelPage()
    }
    
}
