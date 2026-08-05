//
//  MorningView.swift
//  Morning
//
//  Created by Thomas on 05.06.26.
//

import SwiftUI

struct MorningView: View {
    
    @State var pageCounter:Int = 0;
            
    var body: some View {
        
        VStack{
            RadialGradient(
                colors: [
                    .orange,
                    .yellow,
                    .white
                ],
                center: .bottom,
                startRadius: 50,
                endRadius: 300
            )
        }
        .edgesIgnoringSafeArea(.all)
        .overlay{
            if pageCounter == 0{
                WelcomePage(pageCounter: $pageCounter)
                    .transition(.asymmetric(
                        insertion: .move(edge: .trailing),
                        removal: .move(edge: .leading)
                    ))
                    
            }
            
            if pageCounter == 1{
                JournalPage(pageCounter: $pageCounter)
                    .transition(.asymmetric(
                        insertion: .move(edge: .trailing),
                        removal: .move(edge: .leading)
                    ))
            }
            
            if pageCounter == 2{
                TimePage(pageCounter: $pageCounter)
                    .transition(.asymmetric(
                        insertion: .move(edge: .trailing),
                        removal: .move(edge: .leading)
                    ))
            }
            
            if pageCounter == 3{
                EndPage()
                    .transition(.asymmetric(
                        insertion: .move(edge: .trailing),
                        removal: .move(edge: .leading)
                ))
            }
            
        }
    }
}

#Preview {
    MorningView()
}
