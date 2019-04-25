 //
//  ChatServiceImplementation.swift
//  Architecture
//
//  Created by 123 on 12.04.2019.
//  Copyright © 2019 KaVa. All rights reserved.
//

import Foundation

 class ChatServiceImplementation: ChatService {
    private var messages: [Message] = []
    
    func fetchMessages(with completion: @escaping ([Message]) -> Void) {
        completion(messages)
    }
    
    func sendMessage(text: String, completion: @escaping (SendMessageResult) -> Void) {
        let message = Message(text: text)
        messages.append(message)
        completion(SendMessageResult.success)
    }
 }
