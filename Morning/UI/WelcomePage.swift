//
//  WelcomePage.swift
//  Morning!
//
//  Created by Thomas Dornhofer on 04.06.26.
//

import SwiftUI

struct WelcomePage: View {
    
    @Binding var pageCounter: Int
    
    var body: some View {
        VStack{
            HStack{
                    Text("Good \n Morning!")
                        .font(Font.system(size: 60, weight: .heavy ,design: .rounded))
                        .padding(.top)
                        .foregroundStyle(.black)
                    
                    Spacer()
                    
                }
                .padding()
                
                Spacer()
                
                Button{
                    withAnimation{
                        pageCounter = 1
                    }
                }
                label: {
                    Text("Ready for journaling?")
                        .bold()
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.black)
                        .cornerRadius(50)
                }
            }
            .padding()
    }
}

#Preview {
}
