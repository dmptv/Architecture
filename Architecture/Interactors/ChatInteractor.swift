//
//  ChatInteractor.swift
//  Architecture
//
//  Created by 123 on 12.04.2019.
//  Copyright © 2019 KaVa. All rights reserved.
//

import Foundation

class ChatInteractor  {
    private let chatServise: ChatService = ChatServiceImplementation()
    var dataProvider: ChatDataProvidable?
    
    init(dataProvider: ChatDataProvidable) {
        self.dataProvider = dataProvider
    }
    
    func send(text: String) {
        chatServise.sendMessage(text: text) { (result) in
            print("message has been sended with \(result)")
        }
    }
    
    func fetchMessges() {
        chatServise.fetchMessages { messages in
            self.dataProvider?.set(messages: self.split(messages: messages))
        }
    }
    
    func split(messages: [Message]) -> [[Message]] {
        var splittedData: [[Message]] = []
        for message in messages {
            splittedData.append([message])
        }
        return splittedData
    }
}
