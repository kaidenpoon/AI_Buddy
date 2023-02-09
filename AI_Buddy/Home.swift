//
//  ContentView.swift
//  AI_Buddy
//
//  Created by Kaiden Poon on 7/2/2023.
//

import SwiftUI

struct Home: View {
    @State var text:String = ""
    @State var isEditing:Bool = false
    var body: some View {
        VStack {
            ScrollView(showsIndicators: false){
                VStack(alignment:.leading, spacing: 16){
                    ForEach(MOCK_MESSAGE){ message in
                        
                        HStack(alignment:.top) {
                            // for AI response
                            if message.isFormAI{
                                Image("AI")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 40, height: 40)
                                    .padding(.leading)
                                
                                Text( message.messageText)
                                    .padding()
                                    .background(message.isFormAI ? Color("Blue2"):Color("Blue1"))
                                    .clipShape(ChatBubble(isFromAI: message.isFormAI))
                                    .foregroundColor(message.isFormAI ? .black:.white)
                                
                                    .padding(.trailing,44)
                                Spacer()
                            }else{
                                // User input
                                Text( message.messageText)
                                    .padding()
                                    .background(message.isFormAI ? Color("Blue2"):Color("Blue1"))
                                    .clipShape(ChatBubble(isFromAI: message.isFormAI))
                                    .foregroundColor(message.isFormAI ? .black:.white)
                                    .padding(.trailing)
                                    .padding(.leading,88)
                                
                                Spacer()
                            }
                        }
                    }
                }
            }
            
            //MAKR: message input view
            MessageInputView(text: $text, isEditing: $isEditing)
        }
        
    }
    
    //END
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

