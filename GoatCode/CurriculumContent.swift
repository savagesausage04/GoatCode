//
//  CurriculumContent.swift
//  GoatCode
//
//  Created by Aayush Sehgal on 8/12/23.
//

import Foundation


let lessonMapper: [Double: [String]] = [1.0: unit1_lesson0, 1.1: unit1_lesson1, 1.2: unit1_lesson2]

// To add an image, put image in "lessonPictures" and add it to array like this
// "IMG: [name]",
// make sure [name] is the name of pic

let unit1_lesson0: [String] = [
    "Welcome to GoatCode!",
    "Let’s get right into talking about code!",
    "Code is written in a file such as this",
    "IMG: blockCode",
    "It is generally read from top to bottom, and the computer will also read it from top to bottom.",
    "The language being taught in this curriculum is Python. Python is known for being simple and concise. In other words, each word holds a lot of power.",
    "Python also has an extensive online community. If you are ever lost on a question, feel free to do some online research."
]

let unit1_lesson1: [String] = [
    "Let’s start by making our code do something.",
    "The \"print\" function displays text on the user’s screen. A function is simply how a computer does actions.",
    "The syntax (how to write it) is as follows:",
    "print(\"Whatever you want to write\")",
    "Notice that the stuff you want to print is wrapped in a nice layer of quotation marks \"\" and then on the OUTSIDE a pair of parentheses (). Then, the word print is before all of that.",
    "Here is it again:",
    "print(\"Whatever you want to write\")"
]

let unit1_lesson2: [String] = [
    "Similarly to how the print function lets the code talk to us, there is a function that lets us talk to the code.",
    "It’s called the input function.",
    "However, the input function is different from the print function in one major way.",
    "The print function required a parameter, otherwise it wouldn’t know what to say.",
    "The input doesn’t need a parameter, but it does need to somehow tell the other code what you said to it.",
    "This is called “return”-ing. The input function takes what you say, and “return”s your input to the rest of the code.",
    "Functions can have both a parameter, and they can return something. Some functions have both, only one, or neither.",
    "However, in order to access the value that is returned by the input function, we need some way to store this value.",
    "We can’t just keep asking the user to type their input every time we want to use it.",
    "The solution to this is called a “variable”",
    "On to chapter 2!"
]







