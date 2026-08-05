//
//  TimePage.swift
//  Morning
//
//  Created by Thomas Dornhofer on 04.06.26.
//

import SwiftUI

struct TimePage: View {
    
    @Binding var pageCounter: Int
    
    @State private var sliderValue: Double = 10
    @State private var showClock:Bool = false
    
    var body: some View {
        VStack{
            HStack{
                Text("How long do you want to relax now!")
                    .font(Font.system(size: 40, weight: .heavy ,design: .rounded))
                    .padding(.top)
                    .foregroundStyle(.black)
                
                Spacer()
                
            }
            .padding()
            
            Divider()
                .background(.black)
            
            Spacer()
            
            Text("\(Int(sliderValue)) min")
                .font(Font.system(size: 60, weight: .heavy ,design: .rounded))
                .foregroundStyle(.black)
            
            Slider(value: $sliderValue, in: 0...20, step: 1.0)
                .colorScheme(.light)
                .tint(.black)
                .padding(.horizontal)
            
            Spacer()
            Spacer()
            
            Button{
                if sliderValue == 0 {
                    withAnimation{
                        pageCounter = 3
                    }
                }
                else{
                    withAnimation {
                        showClock = true
                    }
                }
            }
            label: {
                
                if sliderValue == 0 {
                    Text("Not now")
                        .bold()
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.black)
                        .cornerRadius(50)
                }
                
                else{
                    Text("Ready to relax")
                        .bold()
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.black)
                        .cornerRadius(50)
                }
                
            }
        }
        .padding()
        .sheet(isPresented: $showClock){
            TimerPage(pageCounter: $pageCounter, minutes: Int(sliderValue))
        }
    }
}

#Preview {
}
