//
//  Profile-Saanvi.swift
//  FINALElevateHer
//
//  Created by Sunil Bhosekar on 7/30/25.
//

import SwiftUI
import SwiftData

struct Profile_Saanvi: View {
    var body: some View {
        
        NavigationStack{

            ZStack {
                
                Color(hex: 0xF49CBB)
                    .ignoresSafeArea()
                
                VStack{
                    Text("Welcome to your Profile!")
                        .padding(.horizontal, 50)
                        .font(.custom("Bitcount-Regular", size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(Color(hex:0x880D1E))
                        .multilineTextAlignment(.center)
                    
                    Image("Profile Icon 1")
                        .resizable()
                        .frame(width: 500, height: 500)
                    Text("Name: ")
                        .font(.custom("Lato-Regular", size: 20))
                        .foregroundColor(Color(hex:0x880D1E))
                    Text("Job: ")
                        .font(.custom("Lato-Regular", size: 20))
                        .foregroundColor(Color(hex:0x880D1E))
                    Text("Years of Experience: ")
                        .font(.custom("Lato-Regular", size: 20))
                        .foregroundColor(Color(hex:0x880D1E))
                    Text("Graduated from: ")
                        .font(.custom("Lato-Regular", size: 20))
                        .foregroundColor(Color(hex:0x880D1E))

                }
                .padding()
                Spacer()
            }
        }
    }
}

#Preview {
    Profile_Saanvi()
}

