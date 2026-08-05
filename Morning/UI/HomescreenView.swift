//
//  HomescrennView.swift
//  Morning
//
//  Created by Thomas Dornhofer on 05.06.26.
//

import SwiftUI

struct HomescreenView: View {
    
    @State private var selectedTab = 0
    
    var body: some View {
        
        TabView(selection: $selectedTab) {
            MainTap().tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }.tag(1)
            
            JournalTap().tabItem {
                Image(systemName: "books.vertical.fill")
                Text("Journals")
            }.tag(2)
        }
        .colorScheme(.light)
    }
}


#Preview {
    HomescreenView()
}
