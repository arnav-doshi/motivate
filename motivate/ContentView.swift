//
//  ContentView.swift
//  motivate
//
//  Created by Arnav Doshi on 9/20/21.
//

import SwiftUI


struct ContentView: View {

//    //Initialize Color Components
//    let SundayPurple = Color("SundayPurple")// 1
//    let MondayRed = Color("MondayRed") // 2
//    let TuesdayOrange = Color("TuesdayOrange") // 3
//    let WednesdayYellow = Color("WednesdayYellow") // 4
//    let ThursdayGreen = Color("ThursdayGreen") // 5
//    let FridayLightBlue = Color("FridayLightBlue")// 6
//    let SaturdayDarkBlue = Color("SaturdayDarkBlue")// 7
    
    //Initialize Date/Time Components
    let date = Date()
    let calendar = Calendar.current
    lazy var components = calendar.dateComponents([.weekday], from: date)
    lazy var dayOfWeek = components.weekday
    lazy var hour = calendar.component(.hour, from: date)
    
    let number = Int.random(in: 0...13)
    
    let arrComplOne = ["You look great today!", "I like your style!" , "You did a great job today!" , "You have a great sense of humor." , "Your hair looks stunning." , "You’re a great example to others." , "I'm proud of you!" , "Great work today!", "You’re gorgeous!", "You’re a gift to those around you." ]
    
    let arrComplTwo = ["You’re someone’s reason to smile today!" , "You’re so thoughtful!", "You have the best ideas!" , "Treat yourself to a reward! You've earned it."]
    
    // ACCESSOR METHODS
    func getDay() -> Int {
        var mutableSelf = self
        return mutableSelf.dayOfWeek!
    }
    
    func getHour() -> Int {
        var mutableSelf = self
        return mutableSelf.hour
    }
    
    func displayQuote() -> String {
        
        if (number <= 10) {
            return(arrComplOne[number])
        } else {
            let numMinusTen = number - 10
            return(arrComplTwo[numMinusTen])
        }
        
    }
    
    var body: some View {
        ZStack{
            
        if getDay() == 1 {
//            Rectangle().frame(width: 900.0, height: 1000.0).foregroundColor(SundayPurple);
            Image("SundayPurple").ignoresSafeArea()
        } else if getDay() == 2 {
//            Rectangle().frame(width: 900.0, height: 1000.0).foregroundColor(MondayRed);
            Image("MondayRed").ignoresSafeArea()
        } else if getDay() == 3 {
//            Rectangle().frame(width: 900.0, height: 1000.0).foregroundColor(TuesdayOrange);
            Image("TuesdayOrange").ignoresSafeArea()
        } else if getDay() == 4 {
//            Rectangle().frame(width: 900.0, height: 1000.0).foregroundColor(WednesdayYellow);
            Image("WednesdayYellow").ignoresSafeArea()
        } else if getDay() == 5 {
//            Rectangle().frame(width: 900.0, height: 1000.0).foregroundColor(ThursdayGreen);
            Image("ThursdayYellow").ignoresSafeArea()
        } else if getDay() == 6 {
//            Rectangle().frame(width: 900.0, height: 1000.0).foregroundColor(FridayLightBlue);
            Image("FridayLightBlue").ignoresSafeArea()
        } else if getDay() == 7 {
//            Rectangle().frame(width: 900.0, height: 1000.0).foregroundColor(SaturdayDarkBlue);
            Image("SaturdayDarkBlue").ignoresSafeArea()
        } else {
//            Rectangle().frame(width: 900.0, height: 1000.0).foregroundColor(Color.black);
            Image("MotivatePink").ignoresSafeArea()
        }
            VStack{
                if (getHour() % 3 == 0) {
                    Text(displayQuote())
                        .font(.title)
                        .fontWeight(.thin)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding(.horizontal)
                    ProgressView(value: 0.4)
                        .padding(.horizontal)
                } else if (getHour() % 3 == 1) {
                    Text(displayQuote())
                        .font(.title)
                        .fontWeight(.thin)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding(.horizontal)
                    ProgressView(value: 0.5)
                } else if (getHour() % 3 == 2) {
                    Text(displayQuote())
                        .font(.title)
                        .fontWeight(.thin)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding(.horizontal)
                    ProgressView(value: 0.6)
                    
                }
                
//                Spacer()
//                HStack {
                    
                    if (getHour() % 3 == 0) {
                        Text("Come back in 3 more hours :)")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color.blue)
                    } else if (getHour() % 3 == 1) {
                        Text("Come back in 1 more hour :)")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color.blue)
                    } else if (getHour() % 3 == 2) {
                        Text("Come back in 2 more hours :)")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color.blue)
                    }
//                }
                
                    
            }
        
    }
        
}
        
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
