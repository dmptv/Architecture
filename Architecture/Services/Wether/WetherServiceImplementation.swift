//
//  WetherServiceImplementation.swift
//  Architecture
//
//  Created by 123 on 14.04.2019.
//  Copyright © 2019 KaVa. All rights reserved.
//

import Foundation
import Alamofire

class WetherServiceImplementation {
    func send() {
        Alamofire.request("vk.com",
                          method: .get,
                          parameters: [:],
                          encoding: JSONEncoding.default,
                          headers: [
            "Authoriazation" : "key"
            ])
    }
}
