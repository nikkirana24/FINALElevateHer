//
//  Profile-Saanvi.swift
//  FINALElevateHer
//
//  Created by Sunil Bhosekar on 7/30/25.
//

import SwiftUI

struct Profile_Saanvi: View {
    var body: some View {
        VStack{
            Text("Welcome to your Profile!")
                .font(.title)
                .fontWeight(.bold)
            Image("ProfileIcon")
                .resizable()
        }
        .padding()
    }
}

#Preview {
    Profile_Saanvi()
}

