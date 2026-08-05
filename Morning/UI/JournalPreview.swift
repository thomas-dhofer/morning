//
//  JournalPreview.swift
//  Morning
//
//  Created by Thomas on 05.06.26.
//

import SwiftUI

struct JournalPreview: View {
    
    var journal:Journal
    
    @State private var showJournal:Bool = false

    
    var body: some View {
        HStack{
            Text("Journal from \(journal.createDate, format: .dateTime.day().month(.wide))")
                .padding(.horizontal)
            Spacer()
            Button{
                showJournal = true
            }label: {
                Image(systemName: "arrowshape.right.fill")
                    .foregroundStyle(.black)
            }
        }
        .padding()
        .frame(maxWidth: .infinity)
        .cornerRadius(50)
        .glassEffect()
        .colorScheme(.light)
        .sheet(isPresented: $showJournal){
            JournalView(JournalText: journal.text)
        }
    }
    
}

#Preview {
    JournalPreview(journal: Journal(text: "Hallo"))
}
