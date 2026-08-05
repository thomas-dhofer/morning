//
//  JournalPage.swift
//  Morning!
//
//  Created by Thomas on 04.06.26.
//

import SwiftUI
import SwiftData

struct JournalPage: View {
    
    @Environment(\.modelContext) var modelContext

    @Binding var pageCounter: Int
    
    @State private var note = ""
    
    @FocusState private var isFocused: Bool

    var body: some View {
        VStack{
            HStack{
                    Text("How are you feeling?")
                        .font(Font.system(size: 40, weight: .heavy ,design: .rounded))
                        .foregroundStyle(.black)
    
                    Spacer()
                
                    
                }
                .padding()
            
                Divider()
                .background(.black)
            
                ZStack(alignment: .topLeading) {
                    if note.isEmpty {
                        Text("How were you yesterday?")
                            .foregroundStyle(.black)
                            .padding(.horizontal)
                            .padding(.top)
                }
                    
                TextField("", text: $note, axis: .vertical)
                    .focused($isFocused)
                    .multilineTextAlignment(.leading)
                    .lineLimit(5...Int.max)
                    .padding(.horizontal)
                    .padding(.top)
                    .foregroundStyle(.black)
                }
                
                Spacer()
                
                Button{
                    if isFocused {
                        isFocused = false
                    }
                    
                    else {
                        withAnimation{
                            modelContext.insert(Journal(text: note))
                            pageCounter = 2
                        }
                    }
                   
                }
                label: {
                    
                    if isFocused{
                        Text("Done")
                            .bold()
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(.black)
                            .cornerRadius(50)
                    }
                    
                    else{
                        Text("Next step")
                            .bold()
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(.black)
                            .cornerRadius(50)
                    }
                }
            }
            .contentShape(Rectangle())
            .onTapGesture {
                isFocused = false
            }
            .padding()
    }
}

#Preview {
}
