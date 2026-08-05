//
//  JournalTap.swift
//  Morning
//
//  Created by Thomas Dornhofer on 05.06.26.
//

import SwiftUI
import SwiftData

struct JournalTap: View {
    
    @Query var journals: [Journal] = []
    
    var body: some View {
        ZStack {
            RadialGradient(
                colors: [.orange, .yellow, .white],
                center: .bottom,
                startRadius: 50,
                endRadius: 300
            )
            .ignoresSafeArea()
            
            VStack {
                HStack {
                    Text("Your Journals")
                        .font(.system(size: 40, weight: .heavy, design: .rounded))
                        .foregroundStyle(.black)
                        .padding()
                    
                    Spacer()
                }
                
                Divider()
                    .background(.black)
                    .padding(.horizontal)
                
                List {
                    ForEach(journals) { journal in
                        JournalPreview(journal: journal)
                            .listRowSeparator(.hidden)
                            .listRowBackground(Color.clear)
                    }
                }
                .listStyle(.plain)
                .scrollContentBackground(.hidden)
                .safeAreaPadding(.bottom, 100)
                
                Spacer()
            }
            .ignoresSafeArea(.all)

        }
    }
}

#Preview {
    JournalTap()
}
