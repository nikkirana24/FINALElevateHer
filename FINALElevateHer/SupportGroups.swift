//
//  SupportGroups.swift
//  FINALElevateHer
//
//  Created by Nikki  on 7/30/25.
//

import SwiftUI
import SwiftData

struct SupportGroups: View {
    var body: some View {
        
        ZStack {
            
            Color(hex: 0xF49CBB)
                .ignoresSafeArea()
            
            VStack {
                
                Text("Support Groups Available")
                    .font(.custom("Bitcount-Regular", size: 30))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(10)
                
                Link(destination: URL(string:"https://women-in-tech.org/")!, label: {
                    Label("Women in Tech", systemImage: "laptopcomputer")
                        .frame(width: 350, height: 40, alignment: .center)
                        .background(Color(hex: 0x880D1E))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.custom("Bitcount-Regular", size: 20))
                })
                
                Link(destination: URL(string:"https://sherunsit.org/")!, label: {
                    Label("She Runs It", systemImage: "desktopcomputer")
                        .frame(width: 350, height: 40, alignment: .center)
                        .background(Color(hex: 0x880D1E))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.custom("Bitcount-Regular", size: 20))
                })
                
                Link(destination: URL(string:"https://www.yahoo.com/builtbygirls/")!, label: {
                    Label("Yahoo - Built by Girls", systemImage: "laptopcomputer")
                        .frame(width: 350, height: 40, alignment: .center)
                        .background(Color(hex: 0x880D1E))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.custom("Bitcount-Regular", size: 20))
                })
                
                Link(destination: URL(string:"https://girlswhocode.com/")!, label: {
                    Label("Girls Who Code", systemImage: "desktopcomputer")
                        .frame(width: 350, height: 40, alignment: .center)
                        .background(Color(hex: 0x880D1E))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.custom("Bitcount-Regular", size: 20))
                })
                
                Link(destination: URL(string:"https://www.kodewithklossy.com/")!, label: {
                    Label("Kode With Klossy", systemImage: "laptopcomputer")
                        .frame(width: 350, height: 40, alignment: .center)
                        .background(Color(hex: 0x880D1E))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.custom("Bitcount-Regular", size: 20))
                })
                
                Link(destination: URL(string:"https://www.wearebgc.org/")!, label: {
                    Label("Black Girls Code", systemImage: "desktopcomputer")
                        .frame(width: 350, height: 40, alignment: .center)
                        .background(Color(hex: 0x880D1E))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.custom("Bitcount-Regular", size: 20))
                })
                
                Link(destination: URL(string:"https://girldevelopit.com/")!, label: {
                    Label("Girl Develop It", systemImage: "laptopcomputer")
                        .frame(width: 350, height: 40, alignment: .center)
                        .background(Color(hex: 0x880D1E))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.custom("Bitcount-Regular", size: 20))
                })
                
                Link(destination: URL(string:"https://anitab.org/")!, label: {
                    Label("Anita Borg Institute", systemImage: "desktopcomputer")
                        .frame(width: 350, height: 40, alignment: .center)
                        .background(Color(hex: 0x880D1E))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.custom("Bitcount-Regular", size: 20))
                })
                
                Link(destination: URL(string:"https://womenwhocode.com/")!, label: {
                    Label("Women Who Code", systemImage: "laptopcomputer")
                        .frame(width: 350, height: 40, alignment: .center)
                        .background(Color(hex: 0x880D1E))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.custom("Bitcount-Regular", size: 20))
                })
            
                Link(destination: URL(string:"https://ncwit.org/")!, label: {
                    Label("National Center For Women & IT", systemImage: "desktopcomputer")
                        .frame(width: 350, height: 40, alignment: .center)
                        .background(Color(hex: 0x880D1E))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.custom("Bitcount-Regular", size: 20))
                })
                
                Link(destination: URL(string:"https://www.hiretechladies.com/")!, label: {
                    Label("Tech Ladies Inc.", systemImage: "laptopcomputer")
                        .frame(width: 350, height: 40, alignment: .center)
                        .background(Color(hex: 0x880D1E))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.custom("Bitcount-Regular", size: 20))
                })
                
                Link(destination: URL(string:"https://www.techwomen.org/")!, label: {
                    Label("TechWomen", systemImage: "desktopcomputer")
                        .frame(width: 350, height: 40, alignment: .center)
                        .background(Color(hex: 0x880D1E))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.custom("Bitcount-Regular", size: 20))
                })
                
                Link(destination: URL(string:"https://adadevelopersacademy.org/")!, label: {
                    Label("Ada Developers Academy", systemImage: "laptopcomputer")
                        .frame(width: 350, height: 40, alignment: .center)
                        .background(Color(hex: 0x880D1E))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.custom("Bitcount-Regular", size: 20))
                })
                Spacer()
            }
        }
    }
}

#Preview {
    SupportGroups()
}
