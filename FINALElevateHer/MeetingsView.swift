//
//  MeetingsView.swift
//  FINALElevateHer
//
//  Created by Nikki  on 7/31/25.
//

import SwiftUI
import SwiftData

struct MeetingsView: View {
    @Query private var meetings:[Meeting]
    @Environment(\.modelContext) private var context
    @State private var newName = ""
    @State private var newDate = Date.now
    
    var body: some View {
        
        ZStack {
            NavigationStack {
                List {
                    ForEach(meetings) { Meeting in
                        HStack {
                            HStack {
                                Text(Meeting.name)
                                Spacer()
                                Text(Meeting.dateOf, format:
                                        .dateTime.month(.wide).day().year())
                                .font(.custom("Lato-Regular", size: 15))
                            }
                        }
                    }
                    .onDelete(perform: deleteMeeting)
                }
                .navigationTitle("Meetings")
                .safeAreaInset(edge: .bottom) {
                    VStack(alignment: .center, spacing: 20) {
                        
                        Text("Schedule New Meetings")
                            .font(.custom("Lato-Regular", size: 20))
                            .padding(20.0)
                        DatePicker(selection: $newDate, in: Date.distantPast...Date.now,
                                   displayedComponents: .date) {
                            TextField("Input Details for the Meeting", text: $newName)
                                .textFieldStyle(.roundedBorder)
                                .font(.custom("Lato-Regular", size: 15))
                        }
                    }
                    Button("Save") {
                        let newFriend = Meeting(name: newName, dateOf: newDate)
                        context.insert(newFriend)
                        newName = ""
                        newDate = .now
                    }
                    .padding()
                    .bold()
                    .font(.custom("Lato-Regular", size: 18))
                }
                .background(.bar)
            }
        }
    }
    func deleteMeeting(at offsets: IndexSet) {
        for index in offsets {
            let meetingToDelete = meetings[index]
            context.delete(meetingToDelete)
        }
    }
}

#Preview {
    MeetingsView()
        .modelContainer(for: Meeting.self, inMemory: true)
}
