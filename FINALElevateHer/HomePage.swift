//  ContentView.swift
//  ElevateHer
//
// THIS IS SAHANA'S WORK, I JUST COPIED AND PASTED IT IN THIS FILE!!

import SwiftUI
import SwiftData

struct HomePage: View {
    @State private var username = "user"
    
    var body: some View {
        
        ZStack {
            
            Color(hex: 0xF49CBB)
                .ignoresSafeArea()
            
            NavigationStack {
                                
                VStack(spacing: 30) {

                    // Header
                    HStack {
                        
                        Text("Welcome \(username)!")
                            .font(.custom("Bitcount-Regular", size: 30))
                            .foregroundColor(Color(hex:0x880D1E))
                            .multilineTextAlignment(.center)
                            .padding(.top, 50.0)
                            .padding(.leading, 20.0)
                        
                        Spacer()
                        
                        //profile!
                        NavigationLink(destination: Profile_Saanvi()){
                            Image(systemName: "person.crop.circle.fill")
                                .resizable()
                                .frame(width: 35, height: 35)
                                .foregroundColor(.black)
                                .padding(.top, 50.0)
                                .padding(.trailing, 20.0)
                        }
                    }
                }
                
                HStack(spacing: 20) {
                    // meetings
                    NavigationLink(destination: MeetingsView()) {
                        VStack {
                            Image(systemName: "person.3.fill")
                            Text("Meetings")
                                .font(.custom("Lato-Regular", size:11))
                        }
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(hex:0xF26A8D))
                        .cornerRadius(10)
                    }
                    
                    // Post/Comment
                    NavigationLink(destination: tanishaPosts()) {
                        VStack {
                            Image(systemName: "envelope.fill")
                            Text("Posts & Comments")
                                .font(.custom("Lato-Regular", size:11))
                        }
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(hex:0xDD2D4A))
                        .cornerRadius(10)
                    }
                    
                    NavigationLink(destination: SupportGroups()) {
                        VStack {
                            Image(systemName: "person.2.fill")
                            Text("Support Groups")
                                .font(.custom("Lato-Regular", size:11))
                        }
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(hex:0xF26A8D))
                        .cornerRadius(10)
                    }
                }
                //Latest Posts/Updates Section
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color(hex:0x880D1E))
                    .frame(height: 500)
                    .overlay(
                        Text("Latest Posts/Updates!")
                            .foregroundColor(.white)
                            .font(.custom("Lato-Regular", size:20))
                    )
                    .padding()
                Spacer()
            }
            .padding()
            .background(Color.clear)
        }
    }
}

#Preview {
    HomePage()
}
