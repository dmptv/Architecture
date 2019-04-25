//
//  ChatService.swift
//  Architecture
//
//  Created by 123 on 02.04.2019.
//  Copyright © 2019 KaVa. All rights reserved.
//

import Foundation

protocol ChatService {
    func fetchMessages(with completion: @escaping ([Message]) -> Void)
    
    func sendMessage(text: String, completion: @escaping (SendMessageResult) -> Void)
}
