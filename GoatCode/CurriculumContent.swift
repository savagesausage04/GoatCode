//
//  CurriculumContent.swift
//  GoatCode
//
//  Created by Aayush Sehgal on 8/12/23.
//

import Foundation

let lessonMapper: [Double: [String]] = [1.1: unit1_lesson1, 1.2: unit1_lesson2, 1.3: unit1_lesson3, 2.1: unit2_lesson1, 2.2: unit2_lesson2, 2.3: unit2_lesson3, 2.4: unit2_lesson4, 2.5: unit2_lesson5, 3.1: unit3_lesson1, 3.2: unit3_lesson2, 3.3: unit3_lesson3, 4.1: unit4_lesson1, 4.2: unit4_lesson2, 4.3: unit4_lesson3]

let questionMapper: [String: [String]] = ["U2_L3_Q1":U2_L3_Q1]
// To add an image, put image in "lessonPictures" and add it to array like this
// "IMG: [name]",
// make sure [name] is the name of pic

//format for questions
//question, choice1, choice2, choice3, choice4, answer
let U2_L3_Q1: [String] = ["Create a boolean variable named 'hasGoats' and set its value as True.","hasGoats = True","hasGoats = False", "hasGoats = true", "hasGoats = “True”", "hasGoats = True"]



let unit1_lesson1: [String] = [
    "Welcome to GoatCode!",
    "Let’s get right into talking about code!",
    "Code is written in a file such as this",
    "It is generally read from top to bottom, and the computer will also read it from top to bottom.",
    "The language being taught in this curriculum is Python. Python is known for being simple and concise. In other words, each word holds a lot of power.",
    "Python also has an extensive online community. If you are ever lost on a question, feel free to do some online research."
]

let unit1_lesson2: [String] = [
    "Let’s start by making our code do something.",
    "The \"print\" function displays text on the user’s screen. A function is simply how a computer does actions.",
    "The syntax (how to write it) is as follows:",
    "print(\"Whatever you want to write\")",
    "Notice that the stuff you want to print is wrapped in a nice layer of quotation marks \"\" and then on the OUTSIDE a pair of parentheses (). Then, the word print is before all of that.",
    "Here is it again:",
    "print(\"Whatever you want to write\")"
]

let unit1_lesson3: [String] = [
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

let unit2_lesson1: [String] = [
    "Variables are like containers that hold information in the world of programming.",
    "They are like little boxes that you can use to store different kinds of stuff, such as numbers, words, or even the results of calculations.",
    "When we use variables, we give them names, just like we have names for people or pets.",
    "These names help us remember what's inside each variable.",
    "We can choose any name we want, but it's important to pick a name that makes sense and is easy to remember.",
    "We can put numbers inside variables.",
    "For example, we can create a variable called \"age\" and store the number 10 inside it.",
    "Now, whenever we want to use that number, we can simply use the name \"age\" instead of remembering the number itself.",
    "Variables can also store words. Let's say we create a variable called \"animal\" and store the word \"goat\" inside it.",
    "Now, whenever we want to use that word, we can use the name \"animal\" instead of typing the word \"goat\" every time.",
    "One cool thing about variables is that we can change what's inside them.",
    "It's like having a box that you can empty and fill with different things whenever you want.",
    "For example, if we have a variable called \"score\" with the number 5 inside it, we can later change it to 10 or any other number we want.",
    "Variables are how we give computers memories in programming. A computer simply does what it is told to do. It won’t even remember anything if we don’t tell it to remember.",
    "For example, if we have a variable called \"favoriteColor\" with the word \"blue\" inside it, we can remember our favorite color and use it whenever we need to.",
    "Variables make our programs more flexible. Instead of writing the same number or word over and over again, we can store it in a variable and use that variable whenever we need it.",
    "To declare a variable, we assign a value to it using the equal sign (=). Let's look at an example.",
    "score = 10",
    "In the code above, we declared a variable called \"score\" and assigned it the value of 10.",
    "This means that the variable \"score\" now holds the number 10, and we can use it in our program.",
    "It's good practice to choose meaningful and descriptive names for variables. This helps us and others understand the purpose of the variable when reading the code.",
    "num_goats = 5",
    "In the code above, the variable name \"num_goats\" tells us that it represents the number of goats. By using descriptive names, we make our code more readable and easier to understand.",
    "In conclusion, variables are like containers that hold information in programming.",
    "They help us store and remember numbers, words, and results of calculations, making our programs more powerful and flexible.",
    "They are written by setting a name equal to a value."
]

let unit2_lesson2: [String] = [
    "Strings are an important part of programming and they help us work with text in Python.",
    "A string is a sequence of characters like letters, numbers, symbols, or even spaces.",
    "It's like a sentence or a word you use in your everyday conversations, but for the computer to understand.",
    "Strings are made up of individual characters, just like the letters that make up words.",
    "In Python, we represent strings by enclosing them in either single quotes (' ') or double quotes (\" \").",
    "For example, \"hello\" and 'world' are both strings. The quotes tell Python that the characters inside should be treated as a string.",
    "Strings can contain not only words but also numbers and symbols.",
    "For instance, \"I am 10 years old\" is a string that includes words, numbers, and even spaces. We can even use special characters like exclamation marks (!) or question marks (?).",
//MCQ ONEQOFQIOJWEIOFJWEOPFKWQOFJMQWOI
    "Strings can also be combined or \"concatenated\" together using the plus (+) operator.",
    "Just like when we join different words to form a sentence, we can join different strings together in Python.",
    "For example, if we have the strings \"Hello\" and \"world\", we can concatenate them to get the string \"Hello world\".",
    "“Hello ” + “world” is the same as “Hello world”",
    "Notice that the concatenation does not add a space to the strings. I had to include one by typing it after the “Hello”.",
    "“Hello ” + “world” is the same as “Hello world”",
    "Earlier, we had trouble with the “input” function because we had nowhere to store the result.",
    "Now, we can do this.",
    "We know that the “input” function returns what you type. In other words, it takes what you type, and “returns” it to the code.",
    "Now, we just need to specify where to return it to.",
    "Let us first ask the user how they are doing today:",
    "print(“How are you doing today?”)",
    "Then take their input.",
    "status = input()",
    "Now, we have saved their status to the “status” variable.",
//MCQ TWO WQRFJMQIOFQWOILFJQEAIFJKKQWQWK
    "To summarize, strings are sequences of characters in Python that allow us to work with and manipulate text. We can take input into a string variable."
]

let unit2_lesson3: [String] = [
    "Booleans are a special type of data in Python that represent the concept of true or false. They help us make decisions and perform logical operations in our programs.",
    "In Python, we use the words \"True\" and \"False\" to represent booleans. Just like answering a yes or no question, a boolean can only have one of two possible values: true or false.",
    "Whenever possible, it’s best to use a boolean because they can only take on two states.",
    "Booleans will later be useful as a result of mathematical comparisons (<, >), and also to control the flow of logic in code.",
    "QST: U2_L3_Q1"
//mcq
]

let unit2_lesson4: [String] = [
    "Integers and floats are important types of numbers in the world of Python programming.",
    "Integers are whole numbers without any decimal points, while floats are numbers with decimal points.",
    "Integers are like the numbers we use for counting things, such as the number of apples in a basket or the age of a person. They can be positive numbers, negative numbers, or even zero.",
    "Floats, on the other hand, are like numbers that represent measurements or quantities that can have decimal parts. For example, if we want to measure the weight of an object or the height of a building, we might use a float.",
    "In Python, we can store integers and floats in variables, just like we do with strings.",
    "For example, we can create a variable called \"age\" and assign it the value 10, representing a person's age.",
    "age = 10",
    "Similarly, we can have a variable called \"temperature\" and assign it the value 65.5 to represent the temperature.",
    "temperature = 25.5",
//MCQ 1PEOQJKFQMFKQWNFIWNEGVJKWEN
    "We can perform various operations on integers and floats, such as addition, subtraction, multiplication, and division.",
    "For example, if we have the integers 5 and 3, we can add them together to get 8.",
    "numberOne = 5",
    "numberTwo = 3",
    "5 + 3 is equal to 8",
    "numberOne + numberTwo is equal to 8",
    "Similarly, if we have the floats 2.5 and 1.5, we can multiply them to get 3.75.",
    "numberOne = 2.5",
    "numberTwo = 1.5",
    "2.5 * 1.5 is equal to 3.75",
    "numberOne * numberTwo is equal to 3.75",
//MCQ TWO WQOJFIQWFQIWJFNQWJKEFKKKDSFJKEFJEIDFCNDJFCN
    "It's worth noting that floats have a limited precision due to how computers store and represent numbers.",
    "This means that sometimes the result of a calculation involving floats may have a slight rounding error.",
    "It's important to keep this in mind when working with precise calculations or financial data."
]

let unit2_lesson5: [String] = [
    "Type casting is a way to change the data type of a variable in Python.",
    "It's like putting on different hats for a variable, allowing it to take on different forms depending on what we need it to be.",
    "Sometimes we need to convert a variable from one type to another, such as converting a number to a string or vice versa.",
    "Python provides built-in functions that allow us to perform these type conversions.",
    "To convert a variable to a specific type, we use functions like str(), int(), and float().",
    "For example, if we have a number stored as an integer and we want to convert it to a string, we can use the str() function.",
    "number = 42",
    "text = str(number)",
    "In the code above, we use the str() function to convert the integer number to a string.",
    "Now the variable “text” contains the string representation of the number, which is \"42\".",
    "Similarly, if we have a string representing a number and we want to perform mathematical operations on it, we can convert it to an integer or float using the int() or float() functions.",
    "num1 = \"5\"",
    "num2 = \"3\"",
    "sum = int(num1) + int(num2)",
    "In this code, we convert the strings \"5\" and \"3\" to integers using the int() function.",
    "Then, we perform addition on the converted numbers and store the result in the variable sum.",
//mcq1
    "Type casting allows us to be flexible with our data and perform operations that are appropriate for the specific data types we are working with.",
    "It enables us to seamlessly switch between different types and use them as needed.",
    "However, it's important to note that not all type conversions are possible or make sense.",
    "For example, if we try to convert a string that doesn't represent a valid number to an integer, Python will raise an error.",
    "So, it's essential to ensure that the data we are trying to convert can be successfully cast to the desired type."
//mcq2
]

let unit3_lesson1: [String] = [
    "Basic logic is an essential concept in programming that helps us make decisions and execute different actions based on specific conditions.",
    "In Python, we use if, elif, and else statements to implement logic in our programs.",
    "The if statement allows us to check if a condition is true or false.",
    "If the condition is true, the code block indented below the if statement will be executed.",
    "If the condition is false, the code block is skipped.",
    "Additionally, in order to check if two numbers are equal, you must use two equal signs (==).",
    "This is to have a difference between the other usage of equal signs, which is to assign values.",
    "number = 13",
    "This statement declares that “number” is equal to 13.",
    "number == 13",
    "This statement returns a boolean stating whether “number” is equal to 13.",
    "age = 12",
    "if age == 18:",
    "    print(\"You are 18 years old!\")",
    "In this code, the if statement checks if the variable “age” is equal to 18. Since the condition is false (age is 12, not 18), the code inside the if block is not executed.",
    "We can extend the if statement using elif (short for \"else if\") to check additional conditions.",
    "If the preceding if condition is false, the program checks the elif condition. If it is true, the corresponding code block executes.",
    "age = 12",
    "if age == 18:",
    "    print(\"You are 18 years old!\")",
    "elif age == 13:",
    "    print(\"You are 13 years old!\")",
    "In this code, the first if condition is false, but the elif condition is true because “age”",
    "is equal to 12.",
    "Therefore, the code inside the elif block executes, printing \"You are 12 years old!\"",
    "We can also use the else statement as a final fallback option. The code block inside the else statement executes if all preceding conditions are false.",
    "age = 12",
    "if age == 18:",
    "    print(\"You are 18 years old!\")",
    "elif age == 13:",
    "    print(\"You are 13 years old!\")",
    "else:",
    "    print(\"You are neither 18 nor 13 years old!\")",
    "In this code, none of the preceding conditions are true, so the code inside the else block executes, printing \"You are neither 18 nor 13 years old!\"",
    "By using if, elif, and else statements, we can create programs that adapt and make decisions based on specific conditions.",
    "They allow our programs to respond differently to different situations, making them more versatile and interactive."
]

let unit3_lesson2: [String] = [
    "Mathematical comparisons in Python allow us to compare numbers and determine their relationship to each other.",
    "These comparisons help us make decisions and control the flow of our programs based on certain conditions.",
    "We use symbols like > (greater than), < (less than), >= (greater than or equal to), and <= (less than or equal to) to perform these comparisons.",
    "For example, if we want to check if a number is greater than another number, we use the greater than symbol (>).",
    "num1 = 5",
    "num2 = 3",
    "if num1 > num2:",
    "    print(\"num1 is greater than num2\")",
    "In this code, the if statement checks if “num1” is greater than “num2”.",
    "Since 5 is indeed greater than 3, the code inside the if block executes, printing \"num1 is greater than num2\".",
    "Another useful operation is the modulo operator (%), which calculates the remainder of a division operation.",
    "It can be used to check if a number is odd or even. If a number modulo 2 equals 0, it means the number is even. If the result is not 0, the number is odd.",
    "num = 6",
    "if num % 2 == 0:",
    "    print(\"The number is even\")",
    "else:",
    "    print(\"The number is odd\")",
    "In this code, the modulo operator checks if “num” divided by 2 leaves a remainder of 0.",
    "Since 6 divided by 2 is 3 without any remainder, the if condition is true, and the code inside the if block executes, printing \"The number is even\".",
    "By using these mathematical comparisons and the modulo operator, we can perform various checks and make decisions in our programs based on numerical conditions.",
    "It allows us to create logic that responds to specific relationships between numbers, making our programs more powerful and versatile."
]

let unit3_lesson3: [String] = [
    "In Python, the \"and\" and \"or\" keywords are used to combine conditions and control if statements.",
    "They allow us to create more complex logic by evaluating multiple conditions simultaneously.",
    "The \"and\" keyword is used to check if two or more conditions are all true.",
    "If all conditions connected by \"and\" are true, the overall expression evaluates to true. Otherwise, it evaluates to false.",
    "has_ticket = true",
    "is_adult = false",
    "if has_ticket && is_adult:",
    "    print(\"You are allowed to enter the event.\")",
    "In this code, the if statement checks if both has_ticket is true and is_adult is true.",
    "Since has_ticket is true but is_adult is false, the overall condition evaluates to false. Therefore, the code inside the if block does not execute.",
    "Also notice that since has_ticket and is_adult are both booleans, we don’t have to check if they are true or false.",
    "We just have to check what they are: they could either be true or false.",
    "For example, this is functional code:",
    "painful = true",
    "if painful:",
    "    print(\"Stop doing that!\")",
    "The \"or\" keyword, on the other hand, is used to check if at least one of the conditions is true.",
    "If any of the conditions connected by \"or\" is true, the overall expression evaluates to true. It evaluates to false only if all conditions are false.",
    "is_raining = true",
    "is_snowing = false",
    "if is_raining || is_snowing:",
    "    print(\"There is stuff falling from the sky.\")",
    "In this code, the if statement checks if either “is_raining” is true or “is_snowing” is true.",
    "Since “is_raining” is true, the code inside the if block executes, printing “There is stuff falling from the sky.”",
    "By using the \"and\" and \"or\" keywords, we can create more complex conditions in our if statements.",
    "These keywords allow us to control the flow of our programs based on multiple conditions, making our code more flexible and adaptable to different scenarios."
]

let unit4_lesson1: [String] = [
    "Imagine you have a basket, and you want to put different types of fruits in it.",
    "In Python, a list is like that basket where you can store various things, such as fruits, numbers, or even other lists.",
    "For example, let's say we have a list of fruits:",
    "fruits = [\"apple\", \"banana\", \"orange\"]",
    "To access a specific fruit, we use square brackets and provide the index of the item we want. For instance:",
    "print(fruits[0])  # Output: \"apple\"",
    "print(fruits[1])  # Output: \"banana\"",
    "print(fruits[2])  # Output: \"orange\"",
    "Lists in Python are special because they are zero-indexed, meaning the first item is at index 0, the second item is at index 1, and so on.",
    "It's similar to counting, but we start with 0 instead of 1.",
    "You can also make a blank list if you would like.",
    "fruits = []",
    "In this code, we have a list called `fruits` with three items. By specifying the index within the square brackets, we can retrieve the value at that position.",
    "Remember, the index starts at 0, so fruits[0] gives us the first item, which is \"apple\".",
    "One of the great features of lists is that they are mutable, which means we can modify their contents. Let's say we want to replace \"banana\" with \"grape\" in our list:",
    "fruits[1] = \"grape\"",
    "By assigning a new value to a specific index, we update the list.",
    "Now, “fruits” changes from [\"apple\", \"banana\", \"orange\"] to [\"apple\", \"grape\", \"orange\"]. We can also add or remove items from the list.",
    "To *dd an item to the end of the list, we use the append() method:",
    "fruits.append(\"pear\")",
    "This code adds \"pear\" to the end of the fruits list, so the list becomes [\"apple\", \"grape\", \"orange\", \"pear\"].",
    "To **remove** an item from the list, we can use the remove() method and provide the value we want to remove:",
    "fruits.remove(\"apple\")",
    "This code removes the \"apple\" from the fruits list, resulting in [\"grape\", \"orange\", \"pear\"].",
    "Lists are incredibly useful for storing collections of data. For example, if you were creating a task management app, you could use a list to keep track of the tasks.",
    "If you were designing a game, you could use a list to store the high scores. Lists provide a convenient way to store, access, and modify related data.",
    "To summarize, lists in Python are versatile containers that can hold various types of data.",
    "They are zero-indexed, allowing us to access specific items by their position.",
    "Lists are mutable, enabling us to modify their contents by assigning new values, adding items with append(), or removing items with remove().",
    "Using lists, we can organize and manipulate collections of data efficiently."
]

let unit4_lesson2: [String] = [
    "Imagine you have a sentence, and you want to extract a specific part of it.",
    "Slicing in Python allows you to do just that! It's like cutting a cake into smaller pieces to enjoy each slice separately.",
    "To slice a string, you use square brackets with two numbers separated by a colon.",
    "The first number represents the starting index, and the second number represents the ending index (exclusive) of the desired slice.",
    "Note that spaces are also characters, and take up their own index.",
    "sentence = \"Hello, world!\"",
    "print(sentence[0:5])  # Output: \"Hello\"",
    "print(sentence[7:12])  # Output: \"world\"",
    "In this code, we have a string called `sentence` that contains the phrase \"Hello, world!\". By using slicing, we can extract specific parts of the string.",
    "For example, “sentence[0:5]” gives us the characters from index 0 to 4 (excluding 5), which is \"Hello\".",
    "Similarly, “sentence[7:12]” gives us the characters from index 7 to 11 (excluding 12), which is \"world\".",
    "Slicing can also be done without specifying the starting or ending index.",
    "If you omit the starting index, Python will assume it as 0, and if you omit the ending index, Python will consider it as the length of the string.",
    "sentence = \"Hello, world!\"",
    "print(sentence[:5])  # Output: \"Hello\"",
    "print(sentence[7:])  # Output: \"world!\"",
    "In this code, “sentence[:5]” slices the string from the beginning to index 4 (excluding 5), giving us \"Hello\".",
    "“sentence[7:]” slices the string from index 7 to the end, resulting in \"world!\".",
    "You can even use negative indices in slicing. Negative indices count from the end of the string, where -1 represents the last character.",
    "sentence = \"Hello, world!\"",
    "print(sentence[-6:-1])  # Output: \"world\"",
    "In this code, `sentence[-6:-1]` slices the string from the sixth-to-last character to the second-to-last character (excluding the last one), giving us \"world\".",
    "Slicing is a powerful tool that allows you to extract specific parts of a string. It comes in handy when you need to access or manipulate different sections of text."
]

let unit4_lesson3: [String] = [
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

















