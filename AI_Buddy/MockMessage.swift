//
//  MockMessage.swift
//  AI_Buddy
//
//  Created by Kaiden Poon on 7/2/2023.
//

import Foundation

struct MockMessage:Identifiable{
    let id:Int
    let imageName:String
    let messageText:String
    let isFormAI:Bool
 
}


let MOCK_MESSAGE:[MockMessage] = [
    .init(id: 0, imageName: "AI", messageText: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.", isFormAI: true),
    .init(id: 1, imageName: "", messageText: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.", isFormAI: false),
    .init(id: 2, imageName: "AI", messageText: "Lorem ipsum dolor", isFormAI: true),
    .init(id: 3, imageName: "", messageText: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.", isFormAI: false),.init(id: 0, imageName: "AI", messageText: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.", isFormAI: true),
    .init(id: 4, imageName: "AI", messageText: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.", isFormAI: false),
    .init(id: 5, imageName: "", messageText: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.", isFormAI: true)
    
]
