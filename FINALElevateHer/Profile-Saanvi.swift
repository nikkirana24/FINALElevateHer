//
//  Profile-Saanvi.swift
//  FINALElevateHer
//
//  Created by Sunil Bhosekar on 7/30/25.
//

import SwiftUI

struct Profile_Saanvi: View {
    var body: some View {
        ZStack{
            Color(.systemPink)
                .ignoresSafeArea()
            VStack{
                Text("Welcome to your Profile!")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
                Image("Profile Icon")
                    .resizable()
                Spacer()
                Spacer()
                Text("Name")
                Text("Job")
                Text("Years of Experience: ")
                Text("Graduated from: ")
                
            }
            .padding()
        }
    }
}

#Preview {
    Profile_Saanvi()
}

