//
//  Message.swift
//  Architecture
//
//  Created by 123 on 02.04.2019.
//  Copyright © 2019 KaVa. All rights reserved.
//

import UIKit

struct Message {
    var id: String
    var text: String = ""
    var type: MessageType = MessageType.text
    
    init() {
        self.id = ID().stringValue
    }
    
    init(text: String) {
        self.init()
        self.text = text
    }
}

