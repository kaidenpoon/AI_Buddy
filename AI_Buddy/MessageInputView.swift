//
//  MessageInputView.swift
//  AI_Buddy
//
//  Created by Kaiden Poon on 7/2/2023.
//

import SwiftUI

struct MessageInputView: View {
    @Binding var text:String
    @Binding var isEditing:Bool
    @FocusState var isFocused:Bool
    
    var body: some View {
        HStack(spacing: 16) {
            
            TextField("Text here...", text: $text)
                .textFieldStyle(.plain)
                .frame(minHeight: 30)
                .frame(height:44)
                .padding(.horizontal)
                .background(RoundedRectangle(cornerRadius: 44, style: .continuous)
                    .stroke(.gray.opacity(0.1), lineWidth: 1.5))
                .focused($isFocused)
                .onChange(of: isFocused) { newValue in
                    print(newValue)
                }
                
             

            Button {
                
                withAnimation{
                    text = ""
                    isEditing = false
                }
            } label: {
                Image(systemName: "paperplane.fill")
                    .font(.title2)
                    .foregroundColor(.white)
                    .rotationEffect(Angle(degrees: isEditing ? 0:45))
                    
                                           
            }
            .frame(width: 44, height: 44)
            .background(Color("Blue1"))
            .clipShape(Circle())
            .shadow(color: Color("Blue1").opacity(0.3), radius: 3, x: 0, y: 3)
            
        }
        .padding(.horizontal)
    }
}
