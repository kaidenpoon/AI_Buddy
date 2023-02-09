//
//  ChatBubble.swift
//  AI_Buddy
//
//  Created by Kaiden Poon on 7/2/2023.
//

import SwiftUI

struct ChatBubble: Shape {
    var isFromAI:Bool
    
    func path(in rect:CGRect) -> Path{
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight,isFromAI ? .bottomRight:.bottomLeft], cornerRadii: CGSize(width: 8, height: 8))
        
        return Path(path.cgPath)
    }
    
    //END
}

struct ChatBubble_Previews: PreviewProvider {
    static var previews: some View {
        ChatBubble(isFromAI: false)
    }
}
