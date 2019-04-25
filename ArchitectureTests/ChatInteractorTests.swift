//
//  ChatInteractorTests.swift
//  ArchitectureTests
//
//  Created by 123 on 12.04.2019.
//  Copyright © 2019 KaVa. All rights reserved.
//

import XCTest
@testable import Architecture

class ChatInteractorTests: XCTestCase {

    func testSplitting_1() {
        let dataProvider = ChatDataProvider()
        let chatInteractor = ChatInteractor(dataProvider: dataProvider)
        let messages = (0..<10).map { i -> Message in
            let message = Message(text: "\(i)")
            return message
        }
        let splittedArray = chatInteractor.split(messages: messages)
        
        // 1. Sections count == rows count
        XCTAssertEqual(messages.count, splittedArray.count)
        
        // 2. Valid sort
        XCTAssertEqual(messages.map{$0.text}, splittedArray.flatMap{$0}.map{$0.text})
    }

}
