//
//  ChatDataProvider.swift
//  Architecture
//
//  Created by 123 on 02.04.2019.
//  Copyright © 2019 KaVa. All rights reserved.
//

import Foundation

protocol ChatDataProvidable {
    func numberOfSections() -> Int
    func numberOfRows(in section: Int) -> Int
    func set(messages: [[Message]])
    func getMessage(by indexPath: IndexPath) -> Message
}

class ChatDataProvider: ChatDataProvidable {
    typealias Model = Message
    private var models: [[Model]] = []
    
    func set(messages: [[Message]]) {
        self.models = messages
    }
    
    func numberOfSections() -> Int {
        return models.count
    }
    
    func numberOfRows(in section: Int) -> Int {
        return models[section].count
    }
    
    func getMessage(by indexPath: IndexPath) -> Message {
        return models[indexPath.section][indexPath.row]
    }
    
}
