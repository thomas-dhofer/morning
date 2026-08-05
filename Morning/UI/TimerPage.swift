//
//  TimerPage.swift
//  Morning
//
//  Created by Thomas Dornhofer on 04.06.26.
//

import SwiftUI
import Combine

struct TimerPage: View {
    
    @Binding var pageCounter: Int
    var minutes: Int
    
    @State private var remainingSeconds: Int = 0
    @State private var isTimerFinished: Bool = false
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
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
            VStack{
                HStack{
                    Text("Just relax")
                        .font(Font.system(size: 40, weight: .heavy ,design: .rounded))
                        .padding(.top)
                        .foregroundStyle(.black)
                                        
                }
                .padding()
                
                
                Spacer()
                
                Text(timeFormatted(remainingSeconds))
                    .font(Font.system(size: 70, weight: .heavy ,design: .rounded))
                    .foregroundStyle(.black)
                    .padding(.top)
                
                Spacer()
                Spacer()
                
                Button{
                    if isTimerFinished{
                        withAnimation{
                            pageCounter += 1
                        }
                    }
                }
                label: {
                    if isTimerFinished{
                        Text("Relaxed?")
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
            .onAppear {
                remainingSeconds = minutes * 60
            }
            
            .onReceive(timer) { _ in
                if remainingSeconds > 0 {
                    remainingSeconds -= 1
                } else {
                    isTimerFinished = true
                    triggerNotificationHaptic(type: .success)
                }
            }
        }
    }
}

func timeFormatted(_ totalSeconds: Int) -> String {
    let seconds = totalSeconds % 60
    let minutes = (totalSeconds / 60) % 60
    return String(format: "%02d:%02d", minutes, seconds)
}

func triggerNotificationHaptic(type: UINotificationFeedbackGenerator.FeedbackType) {
    let generator = UINotificationFeedbackGenerator()
    generator.prepare()
    generator.notificationOccurred(type)
}

#Preview {
}

