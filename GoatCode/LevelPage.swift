//
//  LevelPage.swift
//  GoatCode
//
//  Created by Kyle Han on 7/6/23.
//
import SwiftUI
import Foundation
let unitsVal: [Double] = [1.1, 1.2, 1.3, 2.1, 2.2, 2.3, 2.4, 2.5, 3.1, 3.2,
                           3.3, 4.1, 4.2, 4.3, 5.1, 5.2, 5.3, 6.1, 6.2, 6.3,]
let unitNames = ["Intro to Python",
                "Variables & Operations",
                "Logic",
                "Data Structures",
                "Iteration",
                "Functions",]

let lessonNames = ["Brief intro","Hello World!","Taking Input",
                   "Intro to variables","Strings","Numbers","Booleans","Typecasting",
                   "Basic Logic","Comparisons","Combining conditionals",
                   "Lists","Slicing","Dictionaries",
                   "Iteration","While Loops","For Loops",
                   "I/O Refresher","Creating Functions","Standard Functions",
                    ]

struct LevelPage: View {
    @State var messageIndex = 0

//    let messages: [String] = [
//        "this is message 1",
//        "this is message 2",
//        "this is message 3",
//        "IMG: blockCode",
//        "post image mortel"
//    ]
//
    var lessonCall: Double
    @AppStorage("completed") private var completedEncoded: Data = Data()

    var completed: [Double] {
        get {
            if let decodedData = try? JSONDecoder().decode([Double].self, from: completedEncoded) {
                return decodedData
            }
            return []
        }
        set {
            if let encodedData = try? JSONEncoder().encode(newValue) {
                completedEncoded = encodedData
            }
        }
    }
    @State private var newValue: Double = 0.0
    func addNewValue() {
        var mutableArray = completed
        mutableArray.append(newValue)
        if let encodedData = try? JSONEncoder().encode(mutableArray) {
            completedEncoded = encodedData
        }
        newValue = 0.0
    }
    
    var body: some View {

        let messages: [String] = lessonMapper[lessonCall]!
        ZStack {
            Color("lightBrown")
                .ignoresSafeArea()
            
            VStack {
                // Title at top center
                Text("\(lessonNames[unitsVal.firstIndex(where: { $0 == lessonCall })!])")
                    .font(.custom("minecraft", size:30))
                    .fontWeight(.semibold)
                    .padding(.top, 15)
                    .padding(.horizontal, 10)
                    .frame(maxWidth: .infinity, alignment: .center)
                
                Spacer()
                
                // Text above the "bubble" image
                VStack{
                   
                    if (messages[messageIndex].prefix(3) == "IMG")
                    {
                        Image(String(messages[messageIndex].dropFirst(5)))
                            .resizable()
                            .padding([.top, .leading, .trailing])
                            .cornerRadius(10)
                            .aspectRatio(contentMode: .fit)
                            //.rotationEffect(.degrees(180))
                    }
                    else if (messages[messageIndex].prefix(3) == "QST")
                    {
                        let qArr: [String] = questionMapper[String(messages[messageIndex].dropFirst(5))]!
                        MultipleChoiceQuestionView(question: qArr[0], options: [qArr[1],qArr[2],qArr[3],qArr[4]],correctAnswer:qArr[5])
                            //.rotationEffect(.degrees(180))
                    }
                    else
                    {
                        Text(messages[messageIndex])
                            .font(.title2)
                    }
                }
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
                            if (messageIndex == messages.count - 1){
                                newValue = lessonCall
                                addNewValue()
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
