//
//  InjectInteractor.swift
//  Architecture
//
//  Created by 123 on 14.04.2019.
//  Copyright © 2019 KaVa. All rights reserved.
//

import Foundation
import Swinject

class InjectInteractor {
    private let container = Container()
    
    func get<T>(_ type: T.Type) -> T? {
        return container.resolve(type)
    }
    
    func register() {
        container.register(ChatViewController.self) { (r) -> ChatViewController in
            let i = ChatViewController()
            return i
        }
        
        container.register(MainRouter.self) { (r) -> MainRouter in
            let i = MainRouter(viewController: r.resolve(ChatViewController.self))
            return i
        }
    }
    
}
