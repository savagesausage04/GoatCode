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
    @State private var messageIndex = 0
    @AppStorage("toggleGoat") var toggleGoat: Bool = true
    @State private var wasLastAnswerCorrect: Bool? = nil
    
    @Environment(\.presentationMode) var presentationMode




    let goatImg: [String] = [
        "goat-talking",
        "goat-talking",
        "goat-talking",
        "goat-inquisitive"
    ]
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
    
    //@Binding var isPresented: Bool

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
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding(.top, 1)
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
                        //wasLastAnswerCorrect = nil
                        MultipleChoiceQuestionView(question: qArr[0], options: [qArr[1],qArr[2],qArr[3],qArr[4]],correctAnswer:qArr[5],isAnswerCorrect: $wasLastAnswerCorrect)
                        
                        //.rotationEffect(.degrees(180))
                        
                    }
                    else
                    {
                        Text(messages[messageIndex])
                            .font(.title2)
                            .preferredColorScheme(.light)
                    }
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 16.0, style: .continuous))
                .overlay(alignment: .bottomLeading) {
                    if toggleGoat{
                        Image(systemName: "arrowtriangle.down.fill")
                            .font(.largeTitle)
                            .rotationEffect(.degrees(30))
                            .offset(x: 200, y: 20)
                            .foregroundColor(.white)
                    }
                }
                .padding(.bottom, 30)
                
                // Goat PNG
                HStack {
                    if toggleGoat{
                        if messages[messageIndex].prefix(3) == "QST"{
                            if let wasCorrect = wasLastAnswerCorrect {
                                if wasCorrect {
                                    Image("goat-inquisitive")
                                        .resizable()
                                        .frame(width: 225.0, height: 225.0)
                                        .padding(.horizontal)
                                        .padding(.bottom, 20)
                                } else {
                                    Image("goat-err")
                                        .resizable()
                                        .frame(width: 225.0, height: 225.0)
                                        .padding(.horizontal)
                                        .padding(.bottom, 20)
                                }
                                
                            }
                            else{
                                Image("goat-talking")
                                    .resizable()
                                    .frame(width: 225.0, height: 225.0)
                                    .padding(.horizontal)
                                    .padding(.bottom, 20)
                            }
                        }
                        else{
                            Image(goatImg[Int.random(in: 0..<4)])
                                .resizable()
                                .frame(width: 225.0, height: 225.0)
                                .padding(.horizontal)
                                .padding(.bottom, 20)

                        }
                    }
//                    else{
//                        Spacer()
//                            //.resizable()
//                            .frame(width: 225.0, height: 225.0)
//                            //.padding(.horizontal)
//                            //.padding(.bottom, 20)
//                    }
                    
                    Spacer()
                        .padding()
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
                        .frame(width: 40.0)
                        .onTapGesture {
                            if messageIndex > 0 {
                                messageIndex -= 1
                                wasLastAnswerCorrect = nil

                            }
                        }
                    
                    Text("\(messageIndex + 1)/\(messages.count)")
                        .font(.title3)
                        .fontWeight(.medium)
                        .foregroundColor(Color.black)
                        .padding(.bottom, 10)
                    
                    Image("chevron-forward-outline")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40.0)
                        .onTapGesture {
                            if (messageIndex == messages.count - 1)
                            {
                                if messages[messageIndex].prefix(3) == "QST"{
                                    if let wasCorrect = wasLastAnswerCorrect{
                                        if wasCorrect
                                        {
                                            presentationMode.wrappedValue.dismiss()
                                        }
                                    }

                                }
                                else{
                                    presentationMode.wrappedValue.dismiss()
                                }
                                
                            }

                            if messageIndex < messages.count - 1 {
                                if messages[messageIndex].prefix(3) == "QST"{
                                    if let wasCorrect = wasLastAnswerCorrect{
                                        if wasCorrect
                                        {
                                            messageIndex += 1
                                        }
                                    }

                                }
                                else{
                                    messageIndex += 1
                                    wasLastAnswerCorrect = nil
                                }
                                
                            }
                            if (messageIndex == messages.count - 1){
                                newValue = lessonCall
                                addNewValue()
                            }
                        }
                    
                        //.padding(.bottom, 30)
                        .padding(.trailing, 30)
                }
            }
        }
    }
    
    
    
}



    
    
struct LevelPage_Previews: PreviewProvider {
    static var previews: some View {
       // LevelPage(lessonCall: 1.1, isPresented: false)
        Text("lol")
    }
    
}
