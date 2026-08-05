//
//  ContentView.swift
//  Morning!
//
//  Created by Thomas Dornhofer on 02.06.26.
//

import SwiftUI
import SwiftData

struct ContentView: View {

        
    var body: some View {
        
        HomescreenView()
            .modelContainer(for: Journal.self)
    }
}

#Preview {
    ContentView()
}
