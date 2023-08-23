//
//  TutorialPage.swift
//  GoatCode
//
//  Created by Lucy Xu on 8/13/23.
//

import SwiftUI

struct TutorialPage: View {
    @AppStorage("tutorial_done") private var tutorial_done: Bool = true

    @State var textCounter = 0
    
    let tutorialImgs = [
        "goat-inquisitive",
        "goat-talking",
        "goat-err",
        "goat-talking",
        "goat-talking",
        "goat-inquisitive",
        
    ]
    
    let tutorialText = [
        "Welcome to GoatCode! Thanks so much for downloading our app.",
        "This app is designed to teach Python, which complements the AP Computer Science Principles curriculum but is also great for learning for first-time coders.",
        "We've tried to make the experience as beginner-friendly as possible, so if you love the app or have any feedback, please leave us a review!",
        "The lessons are laid out in a path, with each one having a lesson-specific title.",
        "We also reccomend following along the curriculum with some note-taking and a laptop to follow along with the code in each lesson.",
        "We hope you have a great experience! Good luck, GoatCoder!"
        ]
    
    @State var tracker = 0
    
    var body: some View {
        ZStack {
            // Use the color as background
            Color("lightBrown")
                .edgesIgnoringSafeArea(.all)  // Ignore safe area to fill entire screen
            
            VStack{
                Image(tutorialImgs[textCounter])
                    .resizable()
                    .padding([.top, .leading, .trailing])
                    .cornerRadius(10)
                    .aspectRatio(contentMode: .fit)
                    .padding()
                Text(tutorialText[textCounter])
                    //.frame(width: 300)
                    .padding([.leading, .trailing], 40)
                    .multilineTextAlignment(.center)
                    .font(.title2)
                
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
                        else if textCounter == tutorialText.count - 1{
                            tutorial_done = false
                        }
                        
                        
                    }
                
            }
            Circle()
                .fill(.white)
                .aspectRatio(contentMode: .fit)
                .frame(width: 10.0)
                .offset(x:-62.5, y:360)
                .opacity(tracker == 0 ? 1 : 0.5)
            Circle()
                .fill(.white)
                .aspectRatio(contentMode: .fit)
                .frame(width: 10.0)
                .offset(x:-37.5, y:360)
                .opacity(tracker == 1 ? 1 : 0.5)

            Circle()
                .fill(.white)
                .aspectRatio(contentMode: .fit)
                .frame(width: 10.0)
                .offset(x:-12.5, y:360)
                .opacity(tracker == 2 ? 1 : 0.5)

            Circle()
                .fill(.white)
                .aspectRatio(contentMode: .fit)
                .frame(width: 10.0)
                .offset(x: 12.5, y:360)
                .opacity(tracker == 3 ? 1 : 0.5)
            Circle()
                .fill(.white)
                .aspectRatio(contentMode: .fit)
                .frame(width: 10.0)
                .offset(x: 37.5, y:360)
                .opacity(tracker == 4 ? 1 : 0.5)
            Circle()
                .fill(.white)
                .aspectRatio(contentMode: .fit)
                .frame(width: 10.0)
                .offset(x: 62.5, y:360)
                .opacity(tracker == 5 ? 1 : 0.5)
//            switch tracker{
//            case 0:
//                Circle()
//                    .fill(.white)
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 10.0)
//                    .offset(x:-25, y:360)
//
//                Circle()
//                    .fill(.white)
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 10.0)
//                    .offset(y:360)
//                    .opacity(0.5)
//
//                Circle()
//                    .fill(.white)
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 10.0)
//                    .offset(x: 25, y:360)
//                    .opacity(0.5)
//
//            case 1:
//                Circle()
//                    .fill(.white)
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 10.0)
//                    .offset(x:-25, y:360)
//                    .opacity(0.5)
//
//                Circle()
//                    .fill(.white)
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 10.0)
//                    .offset(y:360)
//
//                Circle()
//                    .fill(.white)
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 10.0)
//                    .offset(x: 25, y:360)
//                    .opacity(0.5)
//
//            case 2:
//                Circle()
//                    .fill(.white)
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 10.0)
//                    .offset(x:-25, y:360)
//                    .opacity(0.5)
//
//                Circle()
//                    .fill(.white)
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 10.0)
//                    .offset(y:360)
//                    .opacity(0.5)
//
//                Circle()
//                    .fill(.white)
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 10.0)
//                    .offset(x: 25, y:360)
//
//            default:
//                Text("hi")
//            }

        }
        
    }
}

struct TutorialPage_Previews: PreviewProvider {
    static var previews: some View {
        TutorialPage()
    }
}
