//
//  UnitPage.swift
//  GoatCode
//
//  Created by Kyle Han on 7/6/23.
//
import SwiftUI
import Foundation



struct UnitPage: View {
    let goatImg: [String] = [
        "goat-talking",
        "goat-inquisitive",
        "goat-err",
    ]
    @AppStorage("completed") private var completedEncoded: Data = Data()
    @AppStorage("tutorial_done") private var tutorial_done: Bool = true
    @AppStorage("backgroundColor1") var backgroundColor1Data: String = "#67E7A4"
    @AppStorage("backgroundColor2") var backgroundColor2Data: String = "#FFDAB9"
    
    @State var tutorial_done_local: Bool = false
    @State private var goatRotationAngle: Double = 0.0

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
    @State var showHome = true
    
    var body: some View {
        //------------------------ HOME PAGE ------------------------------------
        if showHome {
            ZStack {
                // Use the color as background
                Color("lightBrown")
                    .edgesIgnoringSafeArea(.all)  // Ignore safe area to fill entire screen
                    .onTapGesture{
                        showHome = false
                        tutorial_done_local = tutorial_done

                    }
                
                // Content of the page
                VStack {
                    Spacer()  // Pushes content towards the center
                    
                    Image(goatImg[Int.random(in: 0..<3)])
                        .resizable()
                        .padding([.top, .leading, .trailing])
                        .cornerRadius(10)
                        .aspectRatio(contentMode: .fit)
                        .onTapGesture{
                            showHome = false
                            tutorial_done_local = tutorial_done

                        }
                    Spacer()
                        .frame(height: 20)
                    
                    Text("Welcome to GoatCode")
                        .font(.largeTitle)
                        .fontWeight(.light)
                        .foregroundColor(Color.black)  
                        .offset(y: -40)
                        .onTapGesture{
                            showHome = false
                            tutorial_done_local = tutorial_done

                        }
                    
                    Text("Tap to continue")
                        .font(.body)
                        .offset(y: 70)
                        .opacity(0.5)
                        .onTapGesture{
                            showHome = false
                            tutorial_done_local = tutorial_done

                        }


                    Spacer()
                }
                
                /*Image("helpIcon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:50, height:50)
                    .offset(x: 130, y: -350)*/
                
            }
        }
        //-----------------------------UNIT PAGE---------------------------------
        else {
            NavigationView {
                ZStack(alignment:.topLeading){
                    NavigationLink("", destination: TutorialPage(), isActive: $tutorial_done_local)
                        .hidden()
                    ScrollView(showsIndicators: false) {
                        LazyVStack {
                            
                            let xPositions: [CGFloat] = [50, 80, 20, -20, -10,
                                                         60, 80, -20, -40, 30, 50, 0, 50, -40, 50, 0,-30, -60,
                                                         -20, 10, 80, 30, 20, -50]
                            
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
                            
                            VStack(spacing: 40) {
                                Spacer()
                                DividerView(title:"\(unitNames[0])")
                                //unitCount += 1
                                ForEach(0..<20) { index in
                                    if index > 0 && unitsVal[index] > (unitsVal[index-1]+0.2) {
                                        DividerView(title:"\(unitNames[Int(unitsVal[index])-1])")
                                    }
                                    
                                    Button(action: {
                                        
                                    }) {
                                        NavigationLink(destination: LevelPage(lessonCall: unitsVal[index])) {
                                            ZStack {
                                                Circle()
                                                    .fill(Color("lightBrown").opacity(completed.contains(unitsVal[index]) ? 0.5 : 1 ))
                                                    .frame(width: 170, height: 170)
                                                VStack{
                                                    Text(String(unitsVal[index]))
                                                        .font(.system(size: 42, weight: .bold, design: .rounded))
                                                        .foregroundColor(.white)
                                                    
                                                    Text(String(lessonNames[index]))
                                                        .font(.system(size: 22, weight: .bold, design: .rounded))
                                                        .foregroundColor(.white)
                                                        .frame(width: 140)
                                                }
                                                
                                            }
                                            .rotationEffect(.degrees(180))
                                            
                                        }
                                    }
                                    .background(Color.clear)
                                    .offset(x: xPositions[index])
                                    
                                }
                                DividerView(title:"The End")
                                Image("Goat")
                                    .resizable()
                                    .padding([.top, .leading, .trailing])
                                    .cornerRadius(10)
                                    .aspectRatio(contentMode: .fit)
                                    .rotationEffect(.degrees(180))
                                    .rotationEffect(.degrees(goatRotationAngle))
                                    .onTapGesture {
                                        withAnimation(.easeInOut(duration: 3.0)) {
                                            goatRotationAngle += 360 // Rotate by 360 degrees
                                        }
                                    }
                                
                            }
                            .background(Color.clear)
                        }
                        .background(Color.clear)
                    }
                    .rotationEffect(.degrees(180))
                    .edgesIgnoringSafeArea(.all)
                    .background(GradientBackgroundAnimation().edgesIgnoringSafeArea(.all))
                    VStack{
                        Button(action: {
                            // Handle button tap
                        }) {
                            NavigationLink(destination: TutorialPage()) {
                                Image(systemName: "questionmark.circle")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(.blue)
                            }
                            
                        }
                        Spacer()
                            .frame(height: 22)
                        Button(action: {
                            // Handle button tap
                        }) {
                            NavigationLink(destination: SettingsPage()) {
                                Image(systemName: "gear")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(.blue)
                            }
                            
                        }
                    }
                    .padding()
                }
            }
            .navigationViewStyle(StackNavigationViewStyle())

                
            
        }
    }
}

struct DividerView: View {
    var title: String
    var body: some View {
        HStack {
            Rectangle()
                .frame(height: 2)
                .foregroundColor(.gray)
            
            Text(title)
                .font(.system(size: 26))
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .layoutPriority(1) // Ensure the text gets enough space
            
            Rectangle()
                .frame(height: 2)
                .foregroundColor(.gray)
        }
        .frame(height: 40)
        .rotationEffect(.degrees(180))
        .background(Color.clear)
        
    }
}


struct GradientBackgroundAnimation: View {
    
    @State private var animateGradient: Bool = false
    
    @AppStorage("backgroundColor1") var backgroundColor1Data: String = "#67E7A4"
    @AppStorage("backgroundColor2") var backgroundColor2Data: String = "#FFDAB9"
    
    var startColor: Color {
        Color(hex: backgroundColor1Data)
    }
    
    var endColor: Color {
        Color(hex: backgroundColor2Data)
    }
    
    var body: some View {
            LinearGradient(colors: [startColor, endColor], startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
                .hueRotation(.degrees(animateGradient ? 45 : 0))
                .onAppear {
                    withAnimation(.easeInOut(duration: 3).repeatForever(autoreverses: true)) {
                        animateGradient.toggle()
                    }
                }
        }
    }


        
        
struct UnitPage_Previews: PreviewProvider {
    static var previews: some View {
        UnitPage()
            
    }

}


