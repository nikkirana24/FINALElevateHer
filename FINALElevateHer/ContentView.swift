//
//  ContentView.swift
//  FINALElevateHer
//
//  Created by Nikki  on 7/30/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
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
