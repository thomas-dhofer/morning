//
//  JournalView.swift
//  Morning
//
//  Created by Thomas Dornhofer on 05.06.26.
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
    JournalView(JournalText: "In den letzten Jahren hat sich die urbane Mobilität rasant verändert. Mit der zunehmenden Urbanisierung und den Herausforderungen des Klimawandels suchen Städte weltweit nach nachhaltigen und effizienten Transportlösungen. Elektrofahrräder (E-Bikes) haben sich als vielversprechende Alternative zu herkömmlichen Fahrzeugen etabliert. In diesem Artikel untersuchen wir die Vorteile von E-Bikes, die aktuellen Trends und die Zukunftsaussichten dieser innovativen Fortbewegungsart.")
}
