//
//  ContentView.swift
//  GoatCode
//
//  Created by Kyle Han on 6/12/23.
//

import SwiftUI

struct MultipleChoiceQuestionView: View {
    let question: String
    let options: [String]
    let correctAnswer: String
    @State private var selectedOption: String? = nil
    @State private var showFeedback: Bool = false

    var body: some View {
        VStack(spacing: 20) {
            // Question Text
            Text(question)
                .font(.headline)
                .frame(maxWidth: UIScreen.main.bounds.width)


            // Display options in a 2x2 grid
            //LazyVGrid(columns: [GridItem(.flexible(), spacing: 15), GridItem(.flexible(), spacing: 15)], spacing: 15) {
            ScrollView(showsIndicators: false){
                VStack{
                    ForEach(options, id: \.self) { option in
                        OptionButton(option: option,
                                     isSelected: option == selectedOption) {
                            selectedOption = option
                        }
                    }
                }
                
                
                // Check Answer button
                Button(action: {
                    showFeedback = true
                }) {
                    Text("Check Answer")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8.0)
                }
                .alert(isPresented: $showFeedback) {
                    if selectedOption == correctAnswer {

                        return Alert(title: Text("Correct"), message: Text("That's the right answer!"), dismissButton: .default(Text("OK")))
                    } else {
                        return Alert(title: Text("Wrong"), message: Text("Try again!"), dismissButton: .default(Text("OK")))
                    }
                }
            }
        }
        .padding()
    }
}

struct OptionButton: View {
    let option: String
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        
        Button(action: action) {
            HStack {
                Text(option)
                    .padding()
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(isSelected ? Color.blue : Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(8.0)
                Spacer()
            }
        }
        //.frame(maxWidth: .infinity, alignment: .leading) // Makes sure the Button occupies the entire width and the text remains left-aligned.
    }
}


struct MultipleChoiceQuestionView_Previews: PreviewProvider {
    static var previews: some View {
        MultipleChoiceQuestionView(question: "What's the capital of France?",
                                   options: ["London", "Berlin", "Paris", "Madrid"],
                                   correctAnswer: "Paris")
    }
}

    


