//  ContentView.swift
//  ElevateHer
//

import SwiftUI

struct ContentView: View {
    @State private var username = "user"
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 30) {
                
                // Header
                HStack {
                    Text("Welcome \(username)!")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding([.leading, .bottom, .trailing])
                        .padding(.vertical, 8)
                        .background(Color.black)
                        .cornerRadius(10)
                    
                    Spacer()
                    
                    // Profile Icon
                    Button(action: {
                        // Navigate to Profile Page
                    }) {
                        Image(systemName: "person.crop.circle.fill")
                            .resizable()
                            .frame(width: 35, height: 35)
                            .foregroundColor(.white)
                    }
                }
                .padding(.horizontal)
                
                // Connections, Post/Comment, Support Group buttons - HORIZONTAL
                HStack(spacing: 20) {
                    // Connections
                    Button(action: {
                        // Navigate to Connections
                    }) {
                        VStack {
                            Image(systemName: "person.3.fill")
                            Text("Connections")
                                .font(.caption)
                        }
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.purple)
                        .cornerRadius(10)
                    }
                    
                    // Post/Comment
                    Button(action: {
                        // Navigate to Post/Comment
                    }) {
                        VStack {
                            Image(systemName: "envelope.fill")
                            Text("Post/Comment")
                                .font(.caption)
                        }
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.red)
                        .cornerRadius(10)
                    }
                    
                    // Support Groups
                    Button(action: {
                        // Navigate to Support Groups
                    }) {
                        VStack {
                            Image(systemName: "person.2.fill")
                            Text("Support Groups")
                                .font(.caption)
                        }
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.indigo)
                        .cornerRadius(10)
                    }
                }
                .padding(.horizontal)
                
                // Latest Posts/Updates Section
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.blue.opacity(0.6))
                    .frame(height: 500)
                    .overlay(
                        Text("Latest Posts/Updates!")
                            .foregroundColor(.black)
                            .font(.title3)
                    )
                    .padding(.horizontal)
                
                Spacer()
            }
            .padding(.top)
            .background(Color(red: 38/255, green: 0/255, blue: 77/255)) // dark purple
            .ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
}

