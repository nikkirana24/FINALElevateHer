//
//  SupportGroups.swift
//  FINALElevateHer
//
//  Created by Nikki  on 7/30/25.
//

import SwiftUI

struct SupportGroups: View {
    var body: some View {
        
        ZStack {
            
            Color(hex: 0xF4F1FF)
                .ignoresSafeArea()
            
            VStack {
                
                Text("Support Groups Available for Women in Technology")
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding(20)
                
                Link(destination: URL(string:"https://women-in-tech.org/")!, label: {
                    Label("Women in Tech", systemImage: "laptopcomputer")
                        .frame(width: 350, height: 40, alignment: .center)
                        .background(Color(hex: 0x372554))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                })
                
                Link(destination: URL(string:"https://sherunsit.org/")!, label: {
                    Label("She Runs It", systemImage: "desktopcomputer")
                        .frame(width: 350, height: 40, alignment: .center)
                        .background(Color(hex: 0x372554))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                })
                
                Link(destination: URL(string:"https://www.yahoo.com/builtbygirls/")!, label: {
                    Label("Yahoo - Built by Girls", systemImage: "laptopcomputer")
                        .frame(width: 350, height: 40, alignment: .center)
                        .background(Color(hex: 0x372554))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                })
                
                Link(destination: URL(string:"https://girlswhocode.com/")!, label: {
                    Label("Girls Who Code", systemImage: "desktopcomputer")
                        .frame(width: 350, height: 40, alignment: .center)
                        .background(Color(hex: 0x372554))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                })
                
                Link(destination: URL(string:"https://www.kodewithklossy.com/")!, label: {
                    Label("Kode With Klossy", systemImage: "laptopcomputer")
                        .frame(width: 350, height: 40, alignment: .center)
                        .background(Color(hex: 0x372554))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                })
                
                Spacer()
            }
        }
    }
}

#Preview {
    SupportGroups()
}
