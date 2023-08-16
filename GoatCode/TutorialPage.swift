//
//  TutorialPage.swift
//  GoatCode
//
//  Created by Lucy Xu on 8/13/23.
//

import SwiftUI

struct TutorialPage: View {
    @State var textCounter = 0
    
    let tutorialText = [
        "Welcome",
        "hola",
        "sldfj"
        ]
    
    @State var tracker = 0
    
    var body: some View {
        ZStack {
            // Use the color as background
            Color("lightBrown")
                .edgesIgnoringSafeArea(.all)  // Ignore safe area to fill entire screen
            
            VStack{
                Text(tutorialText[textCounter])
            }
            
            HStack{
                Image("chevron-back-outline-white")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50.0)
                    .offset(x: -100, y: 350)
                    .onTapGesture{
                        if textCounter > 0 {
                            textCounter -= 1
                            tracker -= 1
                        }
                    }
                    
                
                Image("chevron-forward-outline-white")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50.0)
                    .offset(x: 100, y: 350)
                    .onTapGesture{
                        if textCounter < tutorialText.count - 1 {
                            textCounter += 1
                            tracker += 1
                        }
                        
                    }
                
            }
            
            switch tracker{
            case 0:
                Circle()
                    .fill(.white)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 10.0)
                    .offset(x:-25, y:360)
                
                Circle()
                    .fill(.white)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 10.0)
                    .offset(y:360)
                    .opacity(0.5)
                
                Circle()
                    .fill(.white)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 10.0)
                    .offset(x: 25, y:360)
                    .opacity(0.5)
                
            case 1:
                Circle()
                    .fill(.white)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 10.0)
                    .offset(x:-25, y:360)
                    .opacity(0.5)
                
                Circle()
                    .fill(.white)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 10.0)
                    .offset(y:360)
                
                Circle()
                    .fill(.white)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 10.0)
                    .offset(x: 25, y:360)
                    .opacity(0.5)
                
            case 2:
                Circle()
                    .fill(.white)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 10.0)
                    .offset(x:-25, y:360)
                    .opacity(0.5)
                
                Circle()
                    .fill(.white)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 10.0)
                    .offset(y:360)
                    .opacity(0.5)
                
                Circle()
                    .fill(.white)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 10.0)
                    .offset(x: 25, y:360)
                
            default:
                Text("hi")
            }

        }
        
    }
}

struct TutorialPage_Previews: PreviewProvider {
    static var previews: some View {
        TutorialPage()
    }
}
