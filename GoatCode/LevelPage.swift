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
        
            "Imagine you have a magical book where you can look up information by a keyword.",
            "In Python, dictionaries work just like that! They allow you to store and retrieve data using unique \"keywords\" called keys.",
            "A dictionary in Python is like a real dictionary you might use for looking up words.",
            "Instead of words and their definitions, a Python dictionary stores key-value pairs. Each key is unique and associated with a value.",
            "student = [\n\"name\": \"Emma\",\n\"age\": 10,\n\"grade\": 5\n]",
            "You can also make a blank dictionary like this",
            "student = [:]",
            "In this code, we have a dictionary called “student”. The keys are \"name\", \"age\", and \"grade\", and their corresponding values are \"Emma\", 10, and 5, respectively.",
            "To retrieve a value from a dictionary, you use the associated key:",
            "print(student[\"name\"])  # Output: \"Emma\"",
            "print(student[\"age\"])  # Output: 10",
            "In this code, “student[\"name\"]” gives us the value associated with the \"name\" key, which is \"Emma\". Similarly, “student[\"age\"]” retrieves the value of the \"age\" key, which is 10.",
            "Dictionaries are incredibly useful when you want to organize and access related data.",
            "For example, you could use a dictionary to store information about a person, like their name, age, and address.",
            "Or you could use it to represent items in a shopping cart, where the keys could be the product names, and the values could be the quantities.",
            "Dictionaries are also mutable, meaning you can change their values or add new key-value pairs. To update a value, you use the associated key:",
            "student[\"grade\"] = 6",
            "This code updates the value of the \"grade\" key to 6. Now, “student[\"grade\"]” will give us the updated value.",
            "To add a new key-value pair, you simply assign a value to a new key:",
            "student[\"school\"] = \"Elementary School\"",
            "This code adds a new key \"school\" with the value \"Elementary School\" to the “student” dictionary.",
            "Dictionaries provide a convenient way to organize and retrieve data using keys and values.",
            "They are great for storing information that needs to be looked up quickly or when you want to group related pieces of data together."
        

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
