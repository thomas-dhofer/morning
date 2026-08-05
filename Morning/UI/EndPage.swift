//
//  EndPage.swift
//  Morning
//
//  Created by Thomas on 04.06.26.
//

import SwiftUI

struct EndPage: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            HStack{
                    Text("Have a great Day!")
                        .font(Font.system(size: 60, weight: .heavy ,design: .rounded))
                        .padding(.top)
                        .foregroundStyle(.black)
                        
                    Spacer()
                        
            }
            .padding()
                    
            Spacer()
                    
            Button{
                dismiss()
            }
            label: {
                Text("Ready for the day?")
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
    EndPage()
}
