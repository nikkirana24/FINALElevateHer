//
//  Welcome.swift
//  FINALElevateHer
//
//  Created by Nikki  on 7/31/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(hex: 0xF49CBB)
                    .ignoresSafeArea()
                VStack {
                    Text("Welcome to")
                        .font(.custom("Bitcount-Regular", size: 40))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    Text("ElevateHER")
                        .font(.custom("Bitcount-Regular", size: 55))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    Text("This app is geared towards girls and women alike, uniting them with the sole purpose of advancing their technological careers in a male dominated workplace.")
                        .font(.custom("Lato-Regular", size: 20))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding([.leading, .bottom, .trailing], 35.0)
                    
                    NavigationLink(destination: HomePage()) {
                        VStack {
                            Image(systemName: "person.3.fill")
                            Text("Click to go to the home page.")
                                .font(.custom("Lato-Regular", size:20))
                        }
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(hex:0xF26A8D))
                        .cornerRadius(10)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

// USE THIS TO MAKE HEXCODE FOR OUR PROGRAM!!
// i got this code from this website: https://medium.com/@jakir/use-hex-color-in-swiftui-c19e6ab79220
extension Color { // we make a new extension called color, which makes a new functionality to the name "Color"
    init(hex: Int, opacity: Double = 1) { // sets initial values for the hex numbers and the opacity
        self.init( // calls an initializer to call another one
            .sRGB, // The standard Red Green Blue (sRGB) color space.
            red: Double((hex >> 16) & 0xff) / 255, // sets values for red in hexcode
            green: Double((hex >> 08) & 0xff) / 255, // sets values for green in hexcode
            blue: Double((hex >> 00) & 0xff) / 255, // sets values for blue in hexcode
            opacity: opacity // sets opacity
        )
    }
}

