//
//  JournalView.swift
//  Morning
//
//  Created by Thomas on 05.06.26.
//

import SwiftUI

struct JournalView: View {
    
    var JournalText: String
    
    var body: some View { 
        
        VStack {
            
            HStack{
                Text("Your Entry")
                    .font(Font.system(size: 40, weight: .heavy ,design: .rounded))
                    .foregroundStyle(.black)
                    .padding()
                    .padding(.top)
                    .padding(.leading)
                
                Spacer()
            }
            Divider()
                .background(.black)
                .padding(.horizontal)
            
            
            HStack{
                Text(JournalText)
                    .padding()
                    .foregroundStyle(.black)
                Spacer()
            }
            Spacer()
        }
        .background(.white)
        
    }
}

#Preview {
    JournalView(JournalText: "Hallo.")
}
