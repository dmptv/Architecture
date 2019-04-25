//
//  ID.swift
//  Architecture
//
//  Created by 123 on 02.04.2019.
//  Copyright © 2019 KaVa. All rights reserved.
//

import UIKit

struct ID {
    var stringValue: String
    init() {
        self.stringValue = UUID.init().uuidString
    }
}
