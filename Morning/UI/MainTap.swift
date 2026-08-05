//
//  MainTap.swift
//  Morning
//
//  Created by Thomas on 05.06.26.
//

import SwiftUI

struct MainTap: View {
    
    @State private var isPresented = false

    
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
        .ignoresSafeArea(.all)
        .overlay{
            
            VStack{
                
                Text("Take time for you!")
                    .font(Font.system(size: 40, weight: .heavy ,design: .rounded))
                    .padding(.top)
                    .foregroundStyle(.black)
                
                
                Button{
                    isPresented = true
                }label:{
                    Text("I am ready")
                        .foregroundStyle(.white)
                        .padding()
                        .padding(.horizontal)
                        .padding(.horizontal)
                        .background(Color.black)
                        .cornerRadius(50)
                        .padding()
                    
                }
                
            }
            .fullScreenCover(isPresented: $isPresented){
                MorningView()
            }
            
        }
    }
}

#Preview {
    MainTap()
}
